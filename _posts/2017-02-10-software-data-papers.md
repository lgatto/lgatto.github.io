---
title: Why Software and data papers are a bad solution to a real problem
tags: ["open access", "open data", "software", "Elsevier", "predatory publishing"]
comments: true
---

I am unhappy and concerned with data/software papers: it's is a bad
answer to a real problem and we end up recapitulating the perverse
incentives in academic publishing. The situation is neither helping
those that value data and software, and open science in general, nor
the dissemination of science in general.

## The *real* issue

The problem we are facing is lack of credit for scientists, research
software engineers and anyone who produces data and software; they do
not get the academic credit for their contributions, despite the
importance of data and scientific software, and end up without any
clear career progression opportunities. The suggested solution is to
publish data/software papers (or data/application notes, as they are
often referred to). The intended fix is that this ties back in with
the usual academic business, but ends up reinforcing the usual bean
counting habit of relying on number papers rather than the actual
inputs. As a result of relying on a broken system to fix the
recognition of data/software, the papers that describe these inputs
become a mere way to boost the number of publications and end up doing
a terrible job at actually describing and promoting the outputs for
what they really are.

Let me elaborate on this.

## Bad software/data papers

I have come across terrible data papers, including some from
*reputable* labs: full of typos, superficial data description, data
provided as supplementary tables in pdf, ... Similar situations for
software, where the emphasis on the software and scientific software
development and *good enough* practice is completely lost: minimal
documentation, unreadable code (no spaces, miles-long lines, no
indentation), completely inappropriate data structures, missing data,
...

What we would really need is an in-depth/hands-on review of the data
when submitted to the repository. The authors should provide evidence
that their data is of good quality, describe the data with good
(possibly interactive) visualisations, document the experimental
design, show how they processed the data, make sure this can be
reproduced, disseminate the raw and processed data in a way that
enables others to easily re-use it, ... I really don't think these
requests are extraordinary, but I hardly ever see data papers that
match all these requirements.

This also applies to software. The review should focus on the
software, like what happens for the
[Bioconductor](https://bioconductor.org/developers/package-submission/)
project: meta-data, documentation, source code, unit testing,
... rather then only (or mainly) the relevance of the software, or a
systematic comparison with other software. I don't mean to say this is
not useful or important, but not relevant if the software is not up to
standards anyway. And if the authors want to publish a comparison of
different software, they shouldn't try to grep an additional citation
by drafting a *quick and dirty* application note.

Once these goals have been attained, the actual data/software in their
original repositories is the important deliverable and one should be
able to cite these, directly. As far as I am concerned, the additional
paper is only a detail. Why not, if that's what's needed for the
authors to get proper academic credit. But the data/software paper
shouldn't become a shortcut for credit at the expense of the actual
deliverable. Let's not forget that a paper is only an advertisement of
the scholarship.

That was my first point, bad data and software papers. 

## Predatory publishing 

Another perverse effect is the proliferation of data or software
journals with very low standards but with a big appetite for poor
data/software notes. Here, you'll find your typical predatory
publishers, such as Elsevier. Their business model is to publish the
scientific paper and the data paper, which will cite each other so
that they boost the citation statistics and their money income. I am
not making this us; I did get my hands on an internal email that
stated this quite explicitly.

Here's the predatory *business model*:

At the research article revision stage, authors are offered the option
to convert their supplementary data into a data article to be
published in the open access
[Data in Brief](https://www.journals.elsevier.com/data-in-brief/)
journal. This comes, of course, at a minor cost; in this case
£500. According the the editor, "the data is then easier to download
and use, i.e. not behind a subscription paywall" (you can't make that
up, can you!). The *Data in Brief* and the research articles then
automatically cite and link to each other. To add insult to injury,
editors and reviewers are *explicitly* told that they are not required
to review this *Data in Brief* article, but may need to look at it if
the need to look into the supporting material.

The benefits, as outlined in the email are: 

* data that were once behind a subscription paywall is now open
  access, and
* the link from the Data in Brief article drives more traffic to the
  research article and the research article gets an extra citation.

What it really means:

Let's pretend we care about open access and data, increasing our
self-citations and metrics, drive more traffic, earn more money. As
the main paper will already be accepted, the data paper is just a
formality and will hardly get reviewed. And we will explicitly tell
the reviewers to ignore data in the main paper.

Unfortunately, the editors' replies haven't leaked to my inbox. But
the mere fact that this something like that is considered is **truly
disgusting**, but in line with Elsevier's general policy. 

Now, to be fair, there are also great examples out there. The
[Journal of Open Research Software (JORS)](http://openresearchsoftware.metajnl.com/),
for example, covers how the software results can be trusted, concrete
and useful suggestions for reuse of the software, addresses
implementation and architecture, ... The
[Journal of Open Source Software](http://joss.theoj.org/) is a
*developer friendly journal for research software packages* with *a
formal peer review process that is designed to improve the quality of
the software submitted*. (Note that I haven't published in any of
those so far.)

## What can we do? 

Ideally, the repositories would have the man power and expertise to do
an in-depth review of every submission, and, if necessary, provide the
support to get every submission to a good standard. Then, no journals
would even consider publishing any output that didn't pass this
in-depth technical review and proceed with the interpretation of the
data. But that's not going to happen. 

> I just want to reiterate how Elsevier's predatory model is the exact
> opposite: don't care about the data, just use it as a pretend open
> access solution and make scientists pay more for the scam.

If you don't care about all this, and just mind the final piece of
advertisement of your research, just keep on how you are
doing. Otherwise, make sure you put every effort in doing the very
best job you can in documenting your data and developing your
software. Publish them ahead of the actual paper, and make sure as
many as possible get a chance to look at then and comment. If you ever
review a paper with software or data, go through it with a
fine-toothed comb, and don't hesitate to highlight what's wrong and
what needs to be improved. Don't hesitate to praise a good software or
data article when you read one too, of course.

I plan to start a systematic and extensive guide describing how to
document a data set in mass spectrometry-based proteomics.
