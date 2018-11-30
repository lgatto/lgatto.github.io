---
title: Using Lego as a metaphor to explain what I do
tags: ["science", "UCLouvain", "teaching"]
comments: true
---

Below is a description of my research (and computational
biology/bioinformatics in general) for non-scientists. It is a first
attempt to the *For beginners* intro for my group page at the [de Duve
Institute](https://www.deduveinstitute.be/) website.


For the last ten years, biology and biomedical sciences have seen an
impressive increase in the size of the data that are collected as part
of routine research projects. The increase in amount and complexity of
such data lead some calling it a [data
deluge](https://www.nature.com/articles/ncb2558). Indeed, we have
reached a situation where the sheer volume of data that is produced is
overwhelming the capacity of individual researcher and research groups
to manage, analyses and extract meaningful information from them. This
revolution is shifting biomedical research towards the quantitative
side of science, and has been driven by the technological
breakthroughs that, today, allow us to sequence whole genomes,
quantify the near complete set of transcripts or proteins, measure
epigenetic modifications across whole genomes, assays proteins for
post-translational modifications, interactions and localisation. But
the question remains: what to do with all that data?

To illustrate how large amounts of data can be difficult to deal with,
let's use the Lego bricks as an analogy. In a classic biological
experimental setup, a researcher would focus on a particular gene or
small set of genes of interest. They would design an experimental
setup to address their specific question, run the experiments and,
after collecting the data, (mostly) manually analyse them. They would
draw conclusions that would either support or deny their working model
and follow-up by designing the next set of experiments
accordingly. From a Lego point of view, this would correspond to
acquiring a Lego box as we know it, i.e. containing all the blocks
needed to build the model (and only those blocks) and a precise and
accurate building plan. There is no need for any special tool to find
the blocks and figure out how to assemble them; even for relatively
large sets, given enough time, it's easy enough to follow the
instructions and produce the final product.

Now imagine that either the blocks, of the building map are messed up.

Imagine that your box contains many more blocks than you actually
need, that some of the blocks needed for your final product are
missing (and that you don't know if they are, or which ones are
missing), and that the blocks aren't sorted in little sachets, but
provided in a single huge bag, with potentially several orders of
magnitude more blocks. Now imagine that the instructions are missing
steps or pages at random, or that the instructions are missing
completely, but that you have some idea of what needs to be build. In
such situations, you'll need algorithms and tools that will
automatically sort the blocks, and arrange them by size, colour,
shape, ... and algorithms that will inform you what pieces are most
likely relevant for the model you want to build.


This sounds like a hopeless situation, but it's not. There are
countless opportunities in acquiring a lot of data, even when the
actual building instructions are missing. Indeed, the extra blocks
aren't random, they are part of of something bigger. Imagine you
originally wanted to build the millennium falcon from the the star
wars movies, and that the reason you want to build that ship is that
you are interested in the technology of the rebel alliance, or even in
the whole star wars universe. Even if the extra blocks aren't directly
relevant to building the millenniums falcon, they might provide
precious information about the technology that was available when the
ship was built. With the right algorithms, you might be able to build
your ship, and collect additional information about the star wars
universe. Or, even you don't manage to build the whole ship, and
achieve only a partial, incomplete product, the additional information
might actually reveal much more about the Lego star wars universe than
solely focusing on the one ship.

Methods that would consider the Lego blocks only, without any
additional information (such as whether some blocks are used to build
rebel or empire ships, or parts of the instruction manual) are termed
unsupervised. Such methods could be used to group all the blocks and
identify clusters of blocks with similar features. If additional
information is at hand, such as whether a block is used for a type of
ship, and we would want to classify a new block as to what type of
ship it belonged, one would refer to a supervised analysis. Given the
sheer number of blocks at hand, we would also want to summarise our
collection by counting the types of blocks, how many blocks of each
type we have, and visually represent this diversity.

In bioinformatics, the blocks would typically be replaced by
quantitative measurements of the abundance of biological entity, such
as transcripts or proteins. The annotation for the supervised analysis
would describe whether these samples are wild-type cells lines, or
healthy donors or, on the contrary, cells submitted to a particular
drug of interest or with a missing gene, or patients suffering of a
specific disease.

Another important feature of the data and the nature of modern, high
throughput biology, is that the questions that are now asked have
shifted from *unequivocal and universal to the context-specific,
probabilistic, and definition dependent* (see [Quincey Justman
(2018)](https://www.cell.com/cell-systems/fulltext/S2405-4712(18)30441-1)
for an insightful documentation of this). The complexity of what we
measure and what we ask requires us to accept that certainties and
determinism are replaced by probabilities and uncertainties, that need
to be quantified to acquire confident knowledge.

This is the figurative situation modern bio-medicine is in: tremendous
potentials to gain a much broader picture of the whole cell, organ,
body, but at the cost of a complexity in what we measure, and the need
to bespoken methods to sort and manage the data we acquire and to
analyse and understand it. That is the role of bioinformatics and
computational biology, i.e. to devise ways to understand complex
biological data to comprehend complex biological processes.

**Update** (30 Nov 2018) Since publishing this post, I (re-)discovered
some applications of Lego in teaching:

[Guerrino Macori](https://twitter.com/guerrinomacori)
[tweeted](https://twitter.com/guerrinomacori/status/1068433465035685888)
about [*Build the Read: A Hands-On Activity for Introducing
Microbiology Students to Next-Generation DNA Sequencing and
Bioinformatics*](http://www.asmscience.org/content/journal/jmbe/10.1128/jmbe.v18i3.1363)

![sequencing with Lego](https://pbs.twimg.com/media/DtPWkJSWkAAweb2.jpg)

I was reminded also that [Jenny Bryan](https://jennybryan.org/about/)
[used Legos to
illustrate](https://speakerdeck.com/jennybc/data-rectangling) some R
data types and the `purrr::map` function.

![dataframe with lego](https://raw.githubusercontent.com/jennybc/lego-rstats/master/lego-rstats_013.jpg)
