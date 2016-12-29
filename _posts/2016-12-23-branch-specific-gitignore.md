---
layout: post
title: Branch specific gitignores for Bioconductor package documentation
tags: ["programming", "git", "svn"]
comments: true
---

For more background on this post, see this
[thread](https://stat.ethz.ch/pipermail/bioc-devel/2016-December/010301.html)
on the Bioc-devel mailing list. The short story is that I use Hadley
Wickham [`pkgdown`](https://github.com/hadley/pkgdown) package to
build a website for my packages and then publish it on GitHub.

The easiest is to create a `./docs` package directory that contains
the whole site and configure GitHub pages to use it directly to
produce, for example, the
[`MSnbase`](http://lgatto.github.io/MSnbase/) page.

The `./docs` directory ends in the package's source which, on one hand
is nice as it simplifies tracking/committing of the site pages with
the package itself, but, on the other hand, the site also ends up on
the Bioconductor subversion server, where it doesn't serve any purpose
other than taking space (5.5M in the case above).

<!--more-->

## Ignoring site from package tarball

It is straightforward to exclude the site's `docs` directory in the
package tarball/zipfile by amending the `.Rbuildignore` file - adding
`docs` will do the trick.

## Excluding from svn

It is not straightforward, however, to ignore the `docs` directory on
the Bioconductor `hedgehog` subversion server if you use `git-svn` to
manage the GitHub and subversion repositories together.

Unfortunately, `git` doesn't support branch-specific `.gitignore`
files or directives. Using different `.gitignore` files for different
branches requires a hack described
[here](http://stackoverflow.com/questions/29579546/git-excludesfile-for-a-branch/29583813#29583813). Here's
how I have implemented it when documenting my Bioconductor packages
with `pkgdown`.

### Define files to ignore

Instead of have a single static `.gitignore` files, we are going to
create as branch-specific files and one general file defining what to
ignore. They all come in a new `gitignores` directory. I choose to
name the general file `all` and the branch-specific ones using the
branch name (`devel` below).


{% highlight bash %}
$ tree .gitignores
.gitignores
├── all
└── devel
{% endhighlight %}

Each file contains exactly what a `.gitignore` file would contain.

{% highlight bash %}
$ cat .gitignores/all 
Makefile
.gitignore
$ cat .gitignores/devel 
docs
{% endhighlight %}

### Dynamic generation of `.gitignore`

When I'm in `master`, I want my `.gitignore` file to list files in
`.gitignores/all` only. When I'm in `devel`, I want both files from
`.gitignores/all` and `.gitignores/devel` to be listed in
`.gitignore`. This can be achieved with a `post-checkout` hook, that
will be triggered after each `git checkout`. Mine is currently pretty
simple. I will always create a new `.gitignore` file from
`.gitignores/all` and will append the content of a file in
`.gitignores/` that matches the branch name.

{% highlight bash %}
$ cat .git/hooks/post-checkout
#!/bin/bash
# Copy in .git/hooks/post-checkout and make it executable
branch=$(git rev-parse --abbrev-ref HEAD)
cat .gitignores/all > .gitignore
if [[ -f .gitignores/$branch ]]; then
    cat .gitignores/$branch >> .gitignore;
fi
{% endhighlight %}


### In action

And ...

{% highlight bash %}
$ git branch 
  devel
* master
  release-3.0
  release-3.1
  release-3.2
  release-3.3
$ cat .gitignore
Makefile
.gitignore
$ git checkout devel 
Switched to branch 'devel'
Your branch and 'bioc/master' have diverged,
and have 1754 and 12 different commits each, respectively.
  (use "git pull" to merge the remote branch into yours)
$ cat .gitignore
Makefile
.gitignore
docs
{% endhighlight %}


I seems to work as expected.

I find this solution rather easy to implement. The major benefit is
that once it is in place, I can forget about it and things should work
irrespective of the `docs` directory. 

### Drawback

There is one drawback with this solution, however. When comparing the
`devel` and `master` branches with `git diff`, the ignored files are
still shown.

{% highlight bash %}
$ git branch
* devel
  master
  release-3.0
  release-3.1
  release-3.2
  release-3.3
$ git diff --name-only master | head
docs/articles/Bugs.md
docs/articles/Bugs.tex
docs/articles/Figures/MSnbase-io-in.png
docs/articles/Figures/MSnbase-io-in.tex
docs/articles/Figures/MSnbase-io-out.png
docs/articles/Figures/MSnbase-io-out.tex
docs/articles/Figures/itraqchem.pdf
docs/articles/Figures/msnset.png
docs/articles/Figures/plot2d-figure.png
docs/articles/Figures/plotDensity-figure.png
{% endhighlight %}


## Other possibilities

### Orphan branches

Robert M. Flight
[suggested](https://stat.ethz.ch/pipermail/bioc-devel/2016-December/010308.html)
to use the good old original orphaned `gh-pages` branch solution.

### svn ignore property

If one doesn't use `git-svn` and manages `git` and `svn`
independently, then setting the svn ignore property with

{% highlight bash %}
% svn propset svn:ignore docs .
{% endhighlight %}

should work. It doesn't when managing both together.

#### Edit

I suggest to add a header to `.gitignores` indicating that `gitignore`
is generated automatically and any updates will be overwritten.


{% highlight bash %}
% cat .gitignores/all
# This is an automatically generated file. Ammend in .gitignores/ and
# read  http://lgatto.github.io/branch-specific-gitignore/ for details
Makefile
.gitignore
{% endhighlight %}

#### Edit 2

And to ignore the `.gitignores` directory completely, suffices to add
it to the general `excludes` file. I prefer to keep it in `git` (but
not svn, and ignore it when building the package bundle) to keep track
from what I ignore.

{% highlight bash %}
$ cat .git/info/exclude
# git ls-files --others --exclude-from=.git/info/exclude
# Lines that start with '#' are comments.
# For a project mostly in C, the following would be a good set of
# exclude patterns (uncomment them if you want to use them):
# *.[oa]
# *~
.gitignores
{% endhighlight %}
