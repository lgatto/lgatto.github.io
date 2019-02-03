---
title: "A gentle introduction to git and Github"
tags: ["teaching", "git"]
comments: true
---


[Git](https://git-scm.com/) is a command line source **distributed
version control system**. Version control system means that its goal
is to track and record every change in a set of text files (typically
source code, but not exclusively), collectively called a repository,
so that it is possible to check what and when changes occured, and to
recover any return to any previous state of the tracked files.

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

![GitHub help](/images/01-github-intro-new-repo.png)

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

![GitHub help](/images/02-github-intro-create-repo.png)

We can now click the `Create repository` button to actually create
it. We get the repository `lgatto/pancakes` populated with the
`README.md` file.

![GitHub help](/images/03-github-intro-repo-state-1.png)

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

![GitHub help](/images/04-github-intro-pancakes-src.png)

At the bottom of the page, we provide a **commit** message, which is a
message that is recorded as part of the history of the repository. Using good

![GitHub help](/images/05-github-intro-pancakes-commit.png)

After clicking `Commit new file`, we see the new state of our
repository, that now contains two files, namely `README.md` and
`pancakes.md`.

![GitHub help](/images/06-github-intro-repo-state-2.png)

We can inspect the history of that repository by clicking on the
**commits** link under the repository name. At this stage we have two
commits, the initial commit that created the repository with the
README file, and the one that added the recipe itself.

![GitHub help](/images/07-github-intro-commits.png)

On the right, we can read the first couple of characters of the unique
commit tags, that uniquely identify each commit and, as a consequence,
each state of the repository.

## Using issues

![GitHub help](/images/08-github-intro-issue-tab.png)
![GitHub help](/images/09-github-intro-new-issue.png)
![GitHub help](/images/10-github-intro-write-issue.png)
![GitHub help](/images/11-github-intro-comment-on-issue.png)
![GitHub help](/images/12-github-intro-view-issue.png)
![GitHub help](/images/13-github-intro-view-comment.png)

## External contributions

![GitHub help](/images/14-github-intro-fork.png)
![GitHub help](/images/15-github-intro-forking.png)
![GitHub help](/images/16-github-intro-forked.png)
![GitHub help](/images/17-github-intro-edit-file.png)
![GitHub help](/images/18-github-intro-commit-edit.png)
![GitHub help](/images/19-github-intro-view-edit.png)
![GitHub help](/images/20-github-intro-commits-2.png)
![GitHub help](/images/21-github-intro-pr-tab.png)
![GitHub help](/images/22-github-intro-new-pr.png)
![GitHub help](/images/23-github-intro-create-pr-1.png)
![GitHub help](/images/24-github-intro-create-pr-2.png)
![GitHub help](/images/25-github-intro-pr-received.png)
![GitHub help](/images/26-github-intro-merge-pr.png)
![GitHub help](/images/27-github-intro-confirm-pr.png)
![GitHub help](/images/28-github-intro-merged-pr.png)
![GitHub help](/images/29-github-intro-commits-3.png)

## Navigating versions

TODO

## Cloning locally


![GitHub help](/images/30-github-intro-clone-url.png)

![GitHub help](/images/31-github-intro-clone.png)

![GitHub help](/images/32-github-intro-commits-4.png)

![GitHub help](/images/33-github-intro-log.png)

## Conclusions

What do I use Github for? Many things, from software development,
project management, issue tracking and discussions, (collaboratively)
writing papers, course development ...

Give some examples:

In particular, when analysing data for collaborators, we always create
a github repository in which all the code goes. Issues are used to
discuss specific points, and very often, I ask my collaborators to
create a Github account to join in, and ask project-related questions
directly on Github rather than in scattered emails. This allows to
track all discussion about a project in the same place.

## Further reading

- [GitHub *Hello world* tutorial](https://guides.github.com/activities/hello-world/)

- Perez-Riverol Y, Gatto L, Wang R, Sachsenberg T, Uszkoreit J,
  Leprevost Fda V, Fufezan C, Ternent T, Eglen SJ, Katz DS, Pollard
  TJ, Konovalov A, Flight RM, Blin K, Vizcaino JA. *Ten Simple Rules
  for Taking Advantage of Git and GitHub*. PLoS Comput Biol. 2016 Jul
  14;12(7):e1004947. doi:[10.1371/journal.pcbi.1004947](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1004947)
  [PMID:27415786](http://www.ncbi.nlm.nih.gov/pubmed/27415786).
