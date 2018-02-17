---
title: Reproducible research - What should our goals be?
tags: ["reproducible research", "Cambridge"]
---


On Friday, I'll be at the
[Reproducible Research workshop](http://www.cruk.cam.ac.uk/seminars-conferences/casim-reproducible-research-workshop)
at the CRUK Cambridge Institute. I'll be participating in a group
discussing *What should our goals be?*, with James Brenton,
[Nicole Janz](http://www.nicolejanz.de/), Natasha Karp and
[Fiona Nielsen](https://www.linkedin.com/in/fionanielsen). I thought I
would write down my thoughts beforehand. In particular, before even
considering what one might be aiming for, I thought it would be useful
to consider what one could be aiming for, what levels of
reproducibility/replication we could consider.

### Nomenclature

**EDIT:** The terms *replicate/replication* and *reproduce/reproducibility*
have been confused and used to mean opposite things (read
[this post](http://languagelog.ldc.upenn.edu/nll/?p=21956) for a
detailed review). I have edited the post below to follow the
nomenclature recommended by Mark Liberman based on J. Claerbout,
V. Stodden and R. Peng.

Update (2018-02-17)L [Here](https://arxiv.org/abs/1802.03311v1)'s a
review of *Terminologies for Reproducible Research* by Lorena
A. Barba.

The following nomenclature is based on a talk by
[Carol Gobble](https://sites.google.com/site/carolegoble/) at the
Software Sustainability Collaborative Workshop in 2014. Here is a list
of things that researchers should consider being able to do

* **Repeat** my experiment, i.e. obtain the same tables/graphs/results
  using the same setup (data, software, ...) in the same lab or on the
  same computer. That's basically re-running one of my analysis some
  time after I original ndeveloped it.

* **Reproduce** <s>Replicate</s> an experiment (not mine),
  i.e. obtain the same tables/graphs/results in a different lab or on
  a different computer, using the same setup (the data would be
  downloaded from a public repository and the same software, but
  possibly different version, different OS, is used). I suppose, we
  should differentiate replication using a fresh install and a virtual
  machine or docker image that replicates the original setup.

* **Replicate** <s>Reproduce</s> an experiment, i.e. obtain the same
  (similar enough) tables/graphs/results in a different set up. The
  data could still be downloaded from the public repository, or
  possibly re-generate/re-simulate it, and the analysis would be
  re-implemented based on the original description. This requires
  openness, and one would clearly not be allowed the use a black box
  approach (VM, docker image) or just re-running a script.

* Finally, **re-use** the information/knowledge from one experiment to
  run a different experiment with the aim to confirm results from
  scratch.

An important distinction between these different aspects is that,
paraphrasing C. Drummond (ref below)
*replicability <s>reproducibility</s> and re-use require changes, while repeatability
and reproducibility <s>replicability</s> avoid them*.

Repeat and reproduce <s>replicate</s> are *technical challenges*, that
are arguably easy, or rather easier to reach. On the contrary,
replicate <s>reproduce</s> and reuse are *scientific
challenges*. Ideally, we would want to aim for the latter to identify
scientific truths that hold beyond the comfort of one's setup. One
could even provocatively argue that the former are not very
interesting - what is the benefit of repeating something that is
potentially wrong. Ever if replicate <s>reproducibility</s> and re-use
are the ultimate goal of Science, repeatability and
reproducibility <s>replication</s> are still essential. How much trust
can we have in the Science if the results vary from day to day, if
even the technological challenges are a genuine hurdle.

We all know that even reproducibility <s>repeatability</s> for medium
size computational projects is difficult, even for trained
computational scientists, armed with an arsenal of tools such as git,
GitHub, knitr, docker, ... assuring repeatability and
reproducibility <s>replication</s> requires substantial investment.

To conclude, I would argue that we, as individuals, should definitely
assure repeatability, certainly aim for
reproducibility <s>replication</s> but not forget that what we, as a scientific
community, should really aim for, is
replication <s>reproducibility</s> and re-use.

### References

Carole Goble. *Results may vary. Reproducibility, Science, Software*
Collaborations Workshop, Oxford, 26 March 2014,
[slides](http://www.software.ac.uk/news/2014-05-06-cw14-professor-carole-gobles-keynote-talk).

Drummond C. *Replicability is not Reproducibility: Nor is it Good
Science*, [online](http://cogprints.org/7691/7/ICMLws09.pdf)

Peng RD. *Reproducible research in computational
science*. Science. 2011 Dec 2;334(6060):1226-7. doi:
10.1126/science.1213847. PMID:22144613;
[PMCID:PMC3383002](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3383002/).

**Edit** Another great references contributed by
[Ben Marwick](@benmarwick):
[Replicability vs. reproducibility - or is it the other way around?](http://languagelog.ldc.upenn.edu/nll/?p=21956)
