---
title: The tragic death of open source research software
tags: ["software", "open research"]
---

This post is a write up of my contribution to the [Fast forward Open
Science](https://www.circle-u.eu/events/2025/fast-forward-open-science.html) event organised by Circle U. I'll be sharing some thoughts
about research software maintenance and survival as part of the 'Open
Source Codes and Software' discussion.


# Introduction

Reserach software has become an central player in scientific research,
to the point that it is hard to imagine scientific research without
software.

But because of its nature and how it is funded/valued, it can also be
a [single point of failure](https://en.wikipedia.org/wiki/Single_point_of_failure).


# Setting the stage

Imagine that 6 months ago, you, a brilliant and motivated early career
researcher in biomedical sciences, defined the ideal experiment to
answer an important biological question in your domain. After several
months of hard work and thousands of euros of consumables, you have
acquired the precious data.

You have even identified a research paper that tackles a similar
question using exactly the same technology and type of data. That
paper describes a data analysis method and published a piece of
software that are ideally suited to answer your question with your
data.

    Experimental design + data + software = results

You have generated good quality data and found the right
software.

Your results are at arm's length, aren't they?

What could go wrong?


# Possible causes of death

Sadely, lots of unfortunate events stand in the way of your results:

-   The software isn't available (anymore).
-   The software is available, but it can't be installed.
-   The software can be installed, but it doesn't work.
-   The software "works" on test data , but you can't get it to run on
    your data.
-   The software "runs" with your data, but the results don't make any
    sense.
-   &#x2026;


# Software collapse


## The software doesn't work

-   Software collapse (or software rot) is the fact that software will
    stop working at some point if is not **actively maintained**. Collapse
    can be the results of bugs, accidental changes or voluntary breaking
    changes (i.e. that don't guarantee backward compatibility) in the
    software itself, changes in software (and service) depedendencies,
    &#x2026;

-   Or simply disappearance of the software (or more generally, the page
    where it was available), or the lack of responses when originally
    available on request only.

-   Or maybe that the "software" was never meant to last beyond that one
    use case/paper. In such cases, it should have clearly been labelled
    as a protoype, not a tool/software can other can reuse.


## Or the software *works* but

-   There is no example data, and it's not clear what the input should
    look like.
-   There is no documentation - the software works (with the
    example/test data or with yours), but the commands and/or output
    don't make any sense.
-   Even though the software (correctly?) runs, the lack of
    documentation or its inadequacy make it too difficult to use.


# Making software survive longer

There exist many steps that one can take to minimise the risks
described above. These steps are technical to write better, and more
maintainable software, or non-technical, to grow and foster a
community and support around the software and their developers. These
opportunities aren't presented in any order of importance. Different
situations and constrains will define what is possible in terms of
possibilities.

If there's one thing to take away, it is not to stay alone in the
development and maintenance of a piece of software, especially for
junior researchers/developers.


## Administration

Stay withing the law, which includes any legal constrains or
limitations, intellectual property, author- and copyrights, funding
obligations, licencing, academia vs industry, policies and
regulations, &#x2026; Stay informed and identify allies that have the
required experience.

If possible, make your software widerly available under an open source
licenses increase usage, contributions, and visibility (see below).


## Open source development

Choose an [open source](https://opensource.org/licenses) license to **publish** your software (ideally as a
piece of software and as a research paper) and **archive** ([Zenodo](https://zenodo.org/),
[Software Heritage](https://www.softwareheritage.org/), &#x2026;) it.

Making your software known allows to foster a collaborative
environment and a user and (co-)developer community around your
software. To facilitate this, consider having a code of conduct,
onboarding documents, contribution guides, and support forum for
users, &#x2026; This is particularly relevant if your software is itself
part of a larger ecosystem, and it is possible to adopt or adapt what
is already available in that software ecosystem.


## Development

Good software development is paramount to minimse software
collapse. But everybody starts at some point, and sharing code is a
good way to move towards the next steps. Even if one feels that the
code isn't ready for prime time because of lack of 'formal' training
(many lack it and still become respected developers and contributors),
it is much better in the short and long run to share code.

Here are some tips:

-   Implement modularity to deal for instance with software collapse. It
    is much easier to maintain and extend small independent components
    rather than a large monolithic code base.
-   Do learn and follow best practice when in comes to research software
    development. These include automation and manual tasks, unit and
    integration testing, version control, software versioning,
    &#x2026; Finding a well meaning community will help with this.
-   Don't reinvent the wheel, and try re-use existing and robust
    infrastructure when possible/available - stand on the shoulders of
    giants. But beware of fragile dependencies, even though this is
    difficult without the experience.
-   Document you code and you software. Forget the silly myth that real
    developers focus on writing code and not documenting it - that
    certainly holds for bad developers. Writing documentation forces to
    put oneself in the position of a user, which is very often
    enlightening on the usability of what is produced. There are many
    types of documentations: manuals, tutorials, example data,
    installation, user and developer guides, slides, videos, web page,
    &#x2026; There's no need to have all of them - focus on a few high
    quality ones.
-   Focus on traceability and reproducibility when analysing data and
    developing software to do so. Without traceability and
    reproducibility, there's no science, only anectodal evidence, at
    best.


## Software life cycle

This is a point of particular interest to more senior developers and
PIs. There's pressure to produce new features and software, but
planning beyond is important.

-   Think of your software's life cycle: maintenance, new features (if
    possible), new developers, &#x2026;
-   Plan for sunsetting you software. Consider ending, pausing, or
    handing off.
-   Also consider distaster planning, when funding suddenly gets cut
    off: make a thread model considering social, financial and technical
    vulnerabilities.


## Community

Consider user and developer communities:

-   Maintain your software, answer questions, accept contribution,
    credit contributors, &#x2026; make you software findable, citable (DOI),
    and re-usable.
-   Announce your software, promote it (on social media, mailing lists,
    forums, &#x2026;) and through more formal academic publications (think of
    the different audiences), conference presentations, posters and
    workshops.

Building a community and addressing its needs is also time
consuming. There is some responsability that comes with release a tool
that is meant to be used by others. If one isn't prepared (or able) to
consider this investment, it might be better to release a prototype.


## Use(rs)

-   The best way to produce software that is used and useful is to 'eat
    your own dog food' - use the sofware you develop, to assess, in real
    time, the usability and relevant of software.
-   Produce software that users can install and use - avoid root/admin
    priviledges.
-   Make it (easy to) run on other's computer (no hard coded paths,
    &#x2026;). "It runs on my computer" is irrelevant.
-   Be explicit on the code: are you publishing one-off analysis scripts
    or prototpyes without any gurantees, scripts supporting results that
    come some some guarantees/efforts to be reproduces, or tool/software
    for wider consumption?


## Training

Appropriate training in data analysis, data management, and software
developement/usage is absolutely essentiel. (Some of) these should be
delivered early, and indeally as part of the university curriculum to
students that train in a software-heavy field (all STEM).

Here are some well-known examples:

-   [The Carpentries](https://carpentries.org/)
-   [Learning and teaching in the Bioconductor community](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1012925)
-   [Galaxy training](https://training.galaxyproject.org/training-material/)
-   [ELIXIR training platform](https://elixir-europe.org/platforms/training)


## Incentives and funding

It is important to recognise of the role of those that develope and
maintain software, often called research software engineers, and offer
them a (stable) career paths.

Decicated funding for sofware are rare, but they do exist: [Software
Sustainability Institute Research Software Maintenance Fund](https://www.software.ac.uk/programmes/research-software-maintenance-fund) (UK),
CZI's [Essential Open Source Software for Science](https://chanzuckerberg.com/eoss/), &#x2026;


# Conclusions

Your results are only as good as the method and the software you
use. Without decent software, there's hardly any trustworthy science.

This means that we need to offer the opportunities and support for
developers to develop, release and maintain "good enough"
software. Collectively, we can:

-   Offer training to researchers who write code or develope software,
    but haven't had any training. These can within an official
    curriculum, or workshops such as those cited above.
-   If researchers offer ways to cite their code/software, let's give
    them credit for their work.
-   Ideally, there should be well defined career paths for researchers
    whose main tasks centre around software. In many countries, research
    software engineers are emerging or are already established.
-   Being able to fund software development and maintenance is
    essential. Currently, too much software is developed as explicit or
    implicit side effects of research projects.
-   It is also crucial to maintain the infrastructure that supports
    software development and maintenant, such as proper archiving.
-   There are many actors that can and should support software:
    researchers, of course, but also their institutions, funders,
    publishers and libraries.


# References

-   [Dealing With Software Collapse](https://ieeexplore.ieee.org/document/8701540). Hinsen K. (2019)
-   [10 quick tips for making your software outlive your job](https://arxiv.org/abs/2505.06484). Littauer R
    et al. (2025).
-   [For long-term sustainable software in bioinformatics](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1011920). Coelho
    LP. (2024).
-   [Ten simple rules for making research software more robust](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005412). Taschuk
    and Wilson (2017).
-   [CODE beyond FAIR](https://hal.science/hal-04930405v1). Di Cosmo et al. (2025).