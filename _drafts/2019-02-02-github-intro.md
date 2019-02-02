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

### A new repository

![GitHub help](/images/01-github-intro-new-repo.png)
![GitHub help](/images/02-github-intro-create-repo.png)
![GitHub help](/images/03-github-intro-repo-state-1.png)

### Adding a file

![GitHub help](/images/04-github-intro-pancakes-src.png)
![GitHub help](/images/05-github-intro-pancakes-commit.png)
![GitHub help](/images/06-github-intro-repo-state-2.png)
![GitHub help](/images/07-github-intro-commits.png)

### Using issues

![GitHub help](/images/08-github-intro-issue-tab.png)
![GitHub help](/images/09-github-intro-new-issue.png)
![GitHub help](/images/10-github-intro-write-issue.png)
![GitHub help](/images/11-github-intro-comment-on-issue.png)
![GitHub help](/images/12-github-intro-view-issue.png)
![GitHub help](/images/13-github-intro-view-comment.png)

### External contributions

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


### Cloning locally
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
