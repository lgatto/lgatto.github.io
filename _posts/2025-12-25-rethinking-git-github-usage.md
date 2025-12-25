---
title: "Rethinking how I use git and reduce my dependency on Github"
tags: ["conference", "software", "talks", "CBIO"]
comments: false
---

I have been wanting to reduce my usage and dependency on Github for
quite some time now.

My first initiative was to join
[codeberg.org]](https://codeberg.org/lgatto), on 9 June 2024. I am
really happy I did so, but Codeberg is a non-profit association and
has [storage
limits](https://blog.codeberg.org/new-storage-limits-on-codeberg-what-you-need-to-know.html),
and rightly so. But my usage of Github exceeds what they can offer, so
I had to (1) carefully choose what to migrate and (2) adapt what/how I
store files in my repos (by switching to
[git-annex](https://git-annex.branchable.com/) for larger blobs, for
example).

My university has a [Gitlab](https://forge.uclouvain.be/) server but
with a limited number of private projects. Ignoring this limitation,
it is the right place for (a limited number of) projects related to my
teaching activities, for example.

I concluded that my best solution was to self-host private
repositories that are not meant to become public. Yesterday, I
experimented a bit with [gitolite](https://gitolite.com/gitolite/),
but today I realised how trivial it is to self-host git repositories
once you have a server with `ssh` access: this
[video](https://www.youtube.com/watch?v=iuIdBfjL62s&si=JVVT_w-f7pgwntuy)
and the [git
book](https://git-scm.com/book/en/v2/Git-on-the-Server-Getting-Git-on-a-Server)
show how.

Github is still inevitable: I have many projects/software that have
been there for a long time, and that are expected to remain
there. Githun is still the *de facto* infrastructure for many
collaborative projects, and that is unlikely to change.

Ironically, you (still) read this page served on Github. I will
eventually migrate my personal page and other websites to
codeberg. It's still a work in progress, but since I started cleaning
up in October 2025, I have [deleted hundreds of
repositories](https://fediscience.org/@lgatto/115321983514080309) and
even two inactive organisation - I have now less than 100 (mostly
public) repos.