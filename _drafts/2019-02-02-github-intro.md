---
title: "A gentle introduction to git and Github"
tags: ["teaching", "git"]
comments: true
---

{% include toc %}

[Git](https://git-scm.com/) is a command line source **distributed
version control system**. Version control system means that its goal
is to track and record every change in a set of text files (typically
source code, but not exclusively), collectively called a repository,
so that it is possible to check what and when changes occured, and to
recover any return to any previous state of the tracked files.


<!--more-->

Distributed means that these tracked files can be stored on many
different computer systems, on a local computer, on a remote server,
or in the cloud. None plays the role of main copy, they are all
equivalent, and users can synchronise (pull and push) code from one to
another.

Git is without any doubt a powerful but relatively difficult piece of
software to use. It was developed by Linus Torvald, the main developer
of the Linux Kernel, for the development of the Linux
kernel. [Github](https://github.com/), is a web interface to git. It
allows to perform all the most important functions of git through a
friendly and easy to use graphical interface, adding some handly
project management and sharing feautres. We are going to focus on the
latter, an illustrate

- the creation of a repository
- adding and modifying files
- fork and modify
- send and merge a pull request
- open, comment and close issues

While the main context in which my colleagues come to know git and
Github is bioinformatics-related, I'm going to demonstrate it with
something many more people are familiar with. We are going to use
Github to manage a [pancakes
recipe](https://www.bbc.com/food/recipes/basicpancakeswithsuga_66226).


Note that do use github, one needs to create a free account, so that
all operations can be tracked and attributed to the person. Here, I
will be using two accounts here, namely my main account
[lgatto](https://github.com/lgatto/), and
[LaurentGatto](https://github.com/LaurentGatto).

## A new repository

Below, I start by creating a repository under user `lgatto` by
clicking on the `+` in the top right corner, and choosing *New
repository*.

![A new GitHub repository*](/images/01-github-intro-new-repo.png)

The next step is to name the repository (here is call is `pancakes`),
provide a short description, choose whether to make it public or
private (we choose the former). I also choose to initialise the
repository with a README[^readme] file (by default, it will be `README.md`, in
markdown format).

[^readme]: README files are among [the three most important
    files](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1004947#pcbi.1004947.box003)
    in a repository, and typically provide a short description of the
    project, how to cite it, a quick start guide or tutorial,
    information on how to contribute, a TODO list, and links to
    additional documentation, ...

We won't use any of the suggested licences here, as those are
targetted towards software generally. It we wanted to set one, we
would probably use
[CC-BY](https://creativecommons.org/licenses/by/4.0/) and mention this
in the README file.

![Create a new repository](/images/02-github-intro-create-repo.png)

We can now click the `Create repository` button to actually create
it. We get the repository `lgatto/pancakes` populated with the
`README.md` file.

![Initial state of our new repository](/images/03-github-intro-repo-state-1.png)

This is a **remote** repository, as it lives remotely (on one of the
GitHub servers). Later, we'll see how to **clone** it locally. Note
that the remote repository isn't special in any way, and doesn't
necessarily define the main one. In this case, it happens to be the
first one that was created, but we could also have created a local
repository and pushed it remotely.

## Adding a file

It is simple to create or upload new files to the remote repository by
clicking the respective grey buttons. If we click `Create new file`,
we get a interface where we can give the file a name (here we use
`pancakes.md`, specifying the markdown file extension), and copy/paste
the recipe from the recipe [BBC
recipe](https://www.bbc.com/food/recipes/basicpancakeswithsuga_66226)
site.

![Adding a new file](/images/04-github-intro-pancakes-src.png)

At the bottom of the page, we provide a **commit** message, which is a
message that is recorded as part of the history of the
repository. Using good commit messages is important as it help
understanding changes and the evolution of a repository without the
need to look at the actual changes.

![Commiting our new file](/images/05-github-intro-pancakes-commit.png)

After clicking `Commit new file`, we see the new state of our
repository, that now contains two files, namely `README.md` and
`pancakes.md`.

![Update repository](/images/06-github-intro-repo-state-2.png)

We can inspect the history of that repository by clicking on the
**commits** link under the repository name. At this stage we have two
commits, the initial commit that created the repository with the
README file, and the one that added the recipe itself.

![Commits so far](/images/07-github-intro-commits.png)

On the right, we can read the first couple of characters of the unique
commit tags, that uniquely identify each commit and, as a consequence,
each state of the repository.

## Using issues

A very attractive feature of GitHub, which is specific to the web
interface and is missing from the git software, is the avaiablility of
repository-specific issues. Our current repository hasn't any (open)
issue yet, as shown by the `Issues (0)` tab.

![Github issues tab](/images/08-github-intro-issue-tab.png)

To open a new issue, we can select that tab and then choose the green
`New issue` button, that open an issue edition window.

![Create a new issue](/images/09-github-intro-new-issue.png)

We can write our new issue using the markdown format. Here, we use an
emoji, and could also easily add figures and links to other issues.

![GitHub help](/images/10-github-intro-write-issue.png)

Once submitted, the issue displays as formatted for anyone to see and
comment.

![GitHub help](/images/11-github-intro-view-issue.png)


I now swith to the `LaurentGatto` account and post a comment on this
issue which, as a reminder, is an issue in the `pancakes` repository
that belongs to user `lgatto`.

![GitHub help](/images/12-github-intro-comment-on-issue.png)

The comment is publicly visible and others could further comment and
discuss.

![GitHub help](/images/13-github-intro-view-comment.png)

## External contributions

The following feature is probably the one where GitHub particularly
shines. It is an extremely powerful mechanism to collaborate and track
external contribution to a repository.

As use `LaurentGatto`, I can choose to **folk** `lgatto`'s `pancakes`
repository (or any publicly available repository for the matter) by
clicking on the `Fork` button in the top right corner. Forking is
going to create an exact copy of the repo, including all the commit
history (but not the issues) into my own account, while keeping a
public record of where it comes from.

![GitHub help](/images/14-github-intro-fork.png)

The following screenshot shows the forking transition screen.

![GitHub help](/images/15-github-intro-forking.png)

Below, we see the `LaurentGatto/pancakes` repository that, just under
the repository title/name, is clearly labelled as a fork of
`lgatto/pancakes`. We can also see from the little icon in the *latest
commit* icon that the last commit was by `lgatto` - the whole
repository history is preserved.

![GitHub help](/images/16-github-intro-forked.png)

User `LaurentGatto` can now edit or upload new files. Below, he clicks
the little pen on the right to edit the `pancakes.md` files.

![GitHub help](/images/17-github-intro-edit-file.png)

Below, user `LaurentGatto` adds a *Tips* section and a new bullet
point suggesting to enjoy the pancakes with chocolate spread and cold
milk. The file udpate needs a message (and an optional extended
description, that we leave black here) before the actual commit.

![GitHub help](/images/18-github-intro-commit-edit.png)

Below, we see the updated `pancakes.md` file with `LaurentGatto`'s
repository.

![GitHub help](/images/19-github-intro-view-edit.png)

Checking the commit history of the repository, we see that there's now
a third commit *Added nutella tip*, by `LaurentGatto`, in addition to
the previous ones by `lgatto`. Note in the title above that these
changes have been recorded in `LaurentGatto/pancakes`, a fork of
`lgatto/pancakes`, and do not exist in `lgatto/pancakes`.

![GitHub help](/images/20-github-intro-commits-2.png)

User `LaurentGatto`, is they wish so, can now contribute their changes
back to the original repository by sending a **Pull request** from the
identically named tab.

![GitHub help](/images/21-github-intro-pr-tab.png)

In the *Pull requests* tab, I can see that there's currently no
existing pull request (often shorted as PR) and a new one can be
started by clicking the green `New pull request` button.


![GitHub help](/images/22-github-intro-new-pr.png)

`LaurentGatto` can now see the differences between the original and
forked repositories (i.e. a single commit by user `LaurentGatto` - the
actual difference between the file(s) could be seen scrolling down)
and can initiate the pull request by clicking the green `New pull
request` button.

![GitHub help](/images/23-github-intro-create-pr-1.png)

It can be useful to provide addition comments, or a general
description for a PR, before actually sending it back to the original
repository.

![GitHub help](/images/24-github-intro-create-pr-2.png)


We see that there's no conflict between the current state of
`lgatto/pancakes` and the PR from `LaurentGatto`. There could be a
conflict if multiple changes affected the same line.

![GitHub help](/images/25-github-intro-pr-received.png)

The next screenshot shows the `lgatto/pancake` repository, where the
PR from `LaurentGatto` has now appeared.


![GitHub help](/images/26-github-intro-merge-pr.png)


Below, the merge is confirmed with a small message. This mechanism
however also allows to explicitly review pull requests and ask for
specific or additional before merging.

![GitHub help](/images/27-github-intro-confirm-pr.png)

The following screenshot show the merged PR.

![GitHub help](/images/28-github-intro-merged-pr.png)

Here we look at the commit history of `lgatto/pancake`, and we can see
that `LaurentGatto` did a modification and that `lgatto` committed it
into `lgatto/pancakes`.

![GitHub help](/images/29-github-intro-commits-3.png)

Below, we show the previously opened *Pancake tips* issue (issue #1),
how `lgatto` posts a last comment and closes the issue with the `Close
and comment` green button.

![GitHub intro](/images/13-1-github-intro-close-issue.png)

![GitHub intro](/images/13-2-github-intro-closed-issue.png)

Closed issues aren't deleted and still visible on the repository.

![GitHub intro](/images/13-3-github-intro-closed-issues.png)

## Navigating versions

TODO

## Cloning locally

So far, we have exclusively used GitHub. But for more substantial
projects, where source code or analysis reports are written and
executed, repositories are managed and updated locally. The creation
of a new (local) copy is called **cloning**, and can be done using the
URL under the `Clone or download` button[^download].

[^download]: It is also possible to download a repository, it the goal
    is only to get download the files and not keep working with git to
    commit new changes.

![GitHub help](/images/30-github-intro-clone-url.png)

From the command line[^cli], the command

```
git clone git@github.com:lgatto/pancakes.git
```

will produce a full copy (i.e. all files with complete history) in a
local directory. In this case, we see that we have the two files.

[^cli]: There also exists graphical user interfaces to manage local
    repositories.

![GitHub help](/images/31-github-intro-clone.png)

The `git log` command recapitualtes the full commit history.

![GitHub help](/images/32-github-intro-commits-4.png)

<!-- ![GitHub help](/images/33-github-intro-log.png) -->

It is of course also possible to add new files from a local
repository. Below, we create a new (empty) file with `touch
waffles.md` to store a recipe for waffles. We then in turn `add` the
file to the local repository, `commit` the addition (with a little
commit message), and actually `push` it to the remote repository. The
screenshot below also illustrates the `status` command to show the
current status of the repository - here, one new added (A) file.

![GitHub help](/images/34-github-intro-add-local.png)

Below, we see the update repository `git log` output, with the latest
commit.

![GitHub help](/images/35-github-intro-commits-4.png)

When pushing a commit from a local repository, the files and the
history are updated in the remote repository.

![GitHub help](/images/36-github-intro-commits-5.png)

## Conclusions

What do I use Github for? Many things, including

- **software development** (here's the
  [`MSnbase`](https://github.com/lgatto/MSnbase/) R/Bioconductor
  package repository, that has been going on since Oct 4 2010,
  according to the git log)

- **project management** (here's a current [`MSnbase` development
  project](https://github.com/lgatto/MSnbase/projects/2)) and **issue
  tracking** and discussions (the latest [`MSnbase`
  issue](https://github.com/lgatto/MSnbase/issues) is #425)

- collaborative **writing papers** (here's the repository of the *Ten
  Simple Rules for Taking Advantage of git and GitHub* paper, that was
  written and managed collaboratively using GitHub)

- **course development** (here's the repository for my [Introduction
  to bioinformatics course
  (WSBIM1207)](https://github.com/uclouvain-cbio/WSBIM1207) course)

- ...


In particular, when analysing data for collaborators, we always create
a github repository in which all the code goes. Issues are used to
discuss specific points, and very often, I ask my collaborators to
create a Github account to join in, and ask project-related questions
directly on Github rather than in scattered emails. This allows to
track all discussion about a project in the same place.

Finally, while it isn't a replacement for a proper backup solution
(the size of file on GitHub is limited), it can be used as such. In
addition, even for a single user, it allows to easily work on
different computers while keeping track of changes, irrespective of
where they were done.

## Further reading and references

- [GitHub *Hello world* tutorial](https://guides.github.com/activities/hello-world/)

- Perez-Riverol Y, Gatto L, Wang R, Sachsenberg T, Uszkoreit J,
  Leprevost Fda V, Fufezan C, Ternent T, Eglen SJ, Katz DS, Pollard
  TJ, Konovalov A, Flight RM, Blin K, Vizcaino JA. *Ten Simple Rules
  for Taking Advantage of Git and GitHub*. PLoS Comput Biol. 2016 Jul
  14;12(7):e1004947. doi:[10.1371/journal.pcbi.1004947](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1004947)
  [PMID:27415786](http://www.ncbi.nlm.nih.gov/pubmed/27415786).
