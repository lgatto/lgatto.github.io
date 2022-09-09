---
title: "Notes on software licenses"
tags: ["software", "Bioconductor", "R"]
comments: false
---

This post was motivated by the preparation of a the
[CytoPipeline](https://uclouvain-cbio.github.io/CytoPipeline/index.html)
package and the following
[question](https://support.bioconductor.org/p/9144841/) about software
licenses. The `CytoPipeline` package is developed by Philippe Hauchamps 
whose PhD project is funded by GSK. Any deliverable that is produced by 
this project needs to be approved by the funder prior to
publication/release. It was thus particularly important to review and
understand the open source licensing requirements with care.

Most software licenses, in particular the open source software
licenses that I (and many academics) are confronted with, define how
one can redistribute code. They do not say anything about what users
are allowed to do when running the software/code. The latter is a
point that I will address toward the end of this post.

So what does it mean to redistribute code? When do research software
engineers, and R developers in particular, redistribute code?

## Simple case

Let's start with a straightforward case. I copy a piece of code and
include it in my own code base. From the moment I distribute my code,
I re-distribute the copied code. To be able to do this, I need to (1)
make sure the respective licenses are compatible and (2) if different
from my software's license, copy the license header and author names
of the code of origin with the copied code chunk.

This is a very obvious case because I explicitly redistribute someone
else's code.

## Where things become less obvious

When writing R packages, we almost never copy other packages' code
into ours (see below for an exception). We use the depends/imports
mechanisms which doesn't imply direct redistribution of code. If my
package depends/imports another package, installation of my package
will trigger the installation of these dependencies and the code (or
parts thereof) of these dependencies will be loaded (copied?) into my
workspace when my package is loaded.

Do we consider the above redistribution of someone else's code? If 
not, then licensing terms do not necessarily apply, or at least are 
open to discussion..

One could argue that licenses need to be applied for code that is
essential for the software to run, even if not distributed
directly. For R packages, I think we would then want to disentangle
whether that dependency plays a central role or not. But if we agree
to that then, given that R and the base packages are released under
GPL >= 2.0 (and some parts under LGPL >= 2.1) (see `?license`), then
all packages would have to be released under GPL compatible licenses,
which is clearly not the case.

A similar discussion applies to binaries that use statically or
dynamically linked libraries.

## Licensing R packages

It actually could be pedantically argued that a majority of R packages
don't apply licences correctly. Indeed, proper application of most
licenses requires the LICENCE file (or a link to the text of the
license) including the names of the authors (which can be found in an
R package's DESCRIPTION file) and owner of the code (typically, the
authors employer), the latter never being specified explicitly in R
packages.

A nice feature of using a proper LICENCE file is that it can contain
additional information, such as a license for the documentation. I
think this is a very neat feature, given that many R packages come
with ample documentation, notably the famous vignettes that can
sometimes be quite elaborate.

A fully-fledged license file would list all software dependencies and
their respective licenses. In R, the dependencies are listed in the
DESCRIPTION file, but miss their respective licenses (but I guess we
can live with that). This however only applies to R package
dependencies. If a package depends (or redistributes) non-R
software/code, these should be referenced in the licensing file. The
`shiny` package is a good example for such a situation, where
JavaScript code is packaged within the R package.

## Re-licensing software

Software can also be re-licensed by its owners. When the license
changes for a similar license (copyleft to copyleft, permissive to
permissive) such as updating from GPL 2 to 3 or from GPL 2 to >= 2,
the impact is limited. There are however cases when the change comes
with substantial restrictions.

Some Bioconductor packages, notably `flowWorkspace` and `CytoML`, 
recently had their licence 
[changed](https://github.com/RGLab/flowWorkspace/commit/a1be772b3a43c51cf2606ea9b68b720654389197) 
from an Artistic 2.0 license to an
academic-only 
[Fred Hutch license](https://github.com/RGLab/flowWorkspace/blob/master/LICENSE). 
This change stops any
non-academic user from using the re-licensed software in their
day-to-day activities. This extreme limitation impacts all other
packages that depend on `flowWorkspace` or `CytoML`. In such a
case, one would have to copy the relevant code from an older version, 
that was still released under an open source license, and follow the 
two steps highlighted in the simple case above.
