---
title: Installing and running MaxQuant on GNU Linux
tags: ["proteomics"]
comments: false
---

## Installation

My first reference was the following
[video](https://www.youtube.com/watch?v=KHdvO1M85VM) by a MaxQuant
team member. There's no actual installation of MaxQuant needed - the
binaries simply need to be downloaded and unzipped. The challenge is
however to install the infrastructure to run MazQuant's C# code on
Linux.

It is suggested to install `dotnet`, as documented
[here](https://learn.microsoft.com/en-us/dotnet/core/install/linux-ubuntu#). This
didn't work under ubuntu 22.04 LTS, as anticipated advertised.

I am not sure of the reason... I had to install `dotnet` 3.1 (CHECK),
an older version of `dotnet` than available by default on 22.04 LTS,
due to MaxQuant requirement. This older version depended of an older
version of `libssl`, namely `libss1`, that wasn't available on ubuntu
(`libssl3` was the default version). I had to download and compile
`libss1` by hand, which I seemed to do successfully.

I then followed [these
instructions](https://bioinformatics.stackexchange.com/a/13901), that
suggsted to use `mono`, installing it via `conda`.

```
# create the environment
conda create -n maxquant -c conda-forge mono
# activate the environment
conda activate maxquant
# run any maxquant version
mono /path/to/maxquant/MaxQuantCmd.exe mqpar.xml
```

It is worth noting that there's also a [MaxQuant docker
container](https://github.com/nickdelgrosso/DockerizeMaxQuant), but
for an older version of MQ, 1.6.5.0, while the current one is 2.2.0.0.

```
docker run -it nickdg/maxquant
```

## Running and debugging

Once installed, running MaxQuant is only a matter of passing it a
parameter file.

```
mono /path/to/maxquant/MaxQuantCmd.exe mqpar.xml
```

That parameter can be generated using the GUI on Windows, and adapted
for linux by changing the paths to the data and fasta file
folders. This is described in detail in the instruction video above.

## Debugging

The run crashed after just under a week's continuous run. I started
the job remotely and lost the output, so didn't have any error
messages to try to identify the cause. I simply knew that the first
MS/MS search was underway and thus resumed the run where it had
crashed, using the `-p` argument, to start processing from a specific
job. To find that job index, one can perform a dry run with the
`--dryrun` argument. This will list all the steps as defined in the
parameter file and their respective ids.

```
mono /path/to/maxuant/MaxQuantCmd.exe --dryrun mqpar.xml
```

Take note the index `N` of the step you want to resume your run with
and run it with:

```
mono /path/to/maxuant/MaxQuantCmd.exe -p N mqpar.xml
```

And, as expected, the error happened again, but this time I managed to
capture the output:

```
Reading search engine results
Preparing reverse hits
Finish search engine results
Filter identifications (MS/MS)
Calculating PEP

Unhandled Exception:
System.Exception: Exception during execution of external process: 1302419 Error: Garbage collector could not allocate 16384u bytes of memory for major heap section.

  at QueueingSystem.WorkDispatcher.ProcessSingleRunExternalProcess (System.Int32 taskIndex, System.Int32 threadIndex) [0x0009d] in <48f64397b7dc4fdd807bfd54c44c2941>:0
  at QueueingSystem.WorkDispatcher.DoWork (System.Int32 taskIndex, System.Int32 threadIndex) [0x0001e] in <48f64397b7dc4fdd807bfd54c44c2941>:0
  at QueueingSystem.WorkDispatcher.Work (System.Object threadIndex) [0x00054] in <48f64397b7dc4fdd807bfd54c44c2941>:0
  at System.Threading.ThreadHelper.ThreadStart_Context (System.Object state) [0x00025] in <aa5dff9b31c64fce86559bbbf6cd364f>:0
  at System.Threading.ExecutionContext.RunInternal (System.Threading.ExecutionContext executionContext, System.Threading.ContextCallback callback, System.Object state, System.Boolean preserveSyncCtx) [0x00071] in <aa5dff9b31c64fce86559bbbf6cd364f>:0
  at System.Threading.ExecutionContext.Run (System.Threading.ExecutionContext executionContext, System.Threading.ContextCallback callback, System.Object state, System.Boolean preserveSyncCtx) [0x00000] in <aa5dff9b31c64fce86559bbbf6cd364f>:0
  at System.Threading.ExecutionContext.Run (System.Threading.ExecutionContext executionContext, System.Threading.ContextCallback callback, System.Object state) [0x0002b] in <aa5dff9b31c64fce86559bbbf6cd364f>:0
  at System.Threading.ThreadHelper.ThreadStart (System.Object obj) [0x0000f] in <aa5dff9b31c64fce86559bbbf6cd364f>:0
[ERROR] FATAL UNHANDLED EXCEPTION: System.Exception: Exception during execution of external process: 1302419 Error: Garbage collector could not allocate 16384u bytes of memory for major heap section.

  at QueueingSystem.WorkDispatcher.ProcessSingleRunExternalProcess (System.Int32 taskIndex, System.Int32 threadIndex) [0x0009d] in <48f64397b7dc4fdd807bfd54c44c2941>:0
  at QueueingSystem.WorkDispatcher.DoWork (System.Int32 taskIndex, System.Int32 threadIndex) [0x0001e] in <48f64397b7dc4fdd807bfd54c44c2941>:0
  at QueueingSystem.WorkDispatcher.Work (System.Object threadIndex) [0x00054] in <48f64397b7dc4fdd807bfd54c44c2941>:0
  at System.Threading.ThreadHelper.ThreadStart_Context (System.Object state) [0x00025] in <aa5dff9b31c64fce86559bbbf6cd364f>:0
  at System.Threading.ExecutionContext.RunInternal (System.Threading.ExecutionContext executionContext, System.Threading.ContextCallback callback, System.Object state, System.Boolean preserveSyncCtx) [0x00071] in <aa5dff9b31c64fce86559bbbf6cd364f>:0
  at System.Threading.ExecutionContext.Run (System.Threading.ExecutionContext executionContext, System.Threading.ContextCallback callback, System.Object state, System.Boolean preserveSyncCtx) [0x00000] in <aa5dff9b31c64fce86559bbbf6cd364f>:0
  at System.Threading.ExecutionContext.Run (System.Threading.ExecutionContext executionContext, System.Threading.ContextCallback callback, System.Object state) [0x0002b] in <aa5dff9b31c64fce86559bbbf6cd364f>:0
  at System.Threading.ThreadHelper.ThreadStart (System.Object obj) [0x0000f] in <aa5dff9b31c64fce86559bbbf6cd364f>:0
```

Thanks to Kristina's help,
[addressing](https://gist.github.com/elrubio/4e7797d7d0d9add96ce82f0472f17908?permalink_comment_id=2961278)
the error was simply a matter of increasing the size of the heap with

```
sudo sysctl -w vm.max_map_count=655350
```

I then re-resumed the search with at step 25, corresponding the
calculation of posterior error probabilites:

```
mono ./MaxQuant_v2.2.0.0/bin/MaxQuantCmd.exe -p 25 mqpar_linux.xml
```

and... after just over a week, success!

```
Calculating PEP
Copying identifications
Applying FDR
Assembling second peptide MS/MS
Combining second peptide files
Second peptide search
Reading search engine results (SP)
Finish search engine results (SP)
Filtering identifications (SP)
Applying FDR (SP)
Re-quantification
Reporter quantification
Retention time alignment
Matching between runs 1
Matching between runs 2
Matching between runs 3
Matching between runs 4
Prepare protein assembly
Assembling proteins
Assembling unidentified peptides
Finish protein assembly
Updating identifications
iBAQ
Label-free preparation
Label-free normalization
Label-free quantification
Label-free collect
Estimating complexity
Prepare writing tables
Writing tables
Finish writing tables
```

## Acknowledgements

Thank you very much to Kristina for her help in finding useful
information, advising during installation and debugging, and
generating the parameter file.
