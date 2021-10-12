---
title: Exploring and sharing spatial proteomics data
tags: ["open research", "Wellcome Trust", "Open Research Project", "spatial", "proteomics"]
comments: true
---

I am very happy to be involved in the
[Open Research Project](https://unlockingresearch.blog.lib.cam.ac.uk/?p=1296)
project, jointly organised and managed by the Wellcome Trust and the
University of Cambridge's Office of Scholar Communication. Some time
ago, I [shared](https://lgatto.github.io/open-research-project/) my
first thoughts about the initiative, where I expressed the need for a
more open research landscape, reaching beyond openly releasing
research outputs (i.e. papers, data and software).  Among these
efforts, one that is widely discussed is pre-registration of
trials. While this doesn't really apply to the kind of research I
lead, I believe that promoting projects early on has interesting
benefits, hence this post.

A couple of years ago, I started with some very preliminary work on an
online resource for experimental spatial proteomics data, coined
[`SpatialMap.org`](http://spatialmap.org/), to be populated with
interactive apps from the
[`pRolocGUI` package](https://computationalproteomicsunit.github.io/pRolocGUI/). As
part of my efforts to promote open research, I decided to write the
grant proposal for the `SpatialMap.org` project, and promote it
through this Open Research Project.

It is unlikely I would ever have applied for funding for this project
because its main goal is the development of a rather specialised
online resource. As far as I know, despite the need for better data
sharing and dissemination, it is difficult to obtain funding for such
projects, unless they are big and address a very general need. If I
believed that this project would have had a high chance to win
external funding, I would probably have waited until obtaining an
official reply from the funding body before publishing it
here. Another view is that this proactive and open project description
and it's initial implementation might lead to new opportunities later
on.


The application below follows the standard structure I have used for
my BBSRC applications, albeit in a shorter form. Another difference
with my grant applications is that there are generally more
applicants; in addition to me, the principal investigator (PI), I
include one or more co-applicants (co-investigator, co-I) with
complementary skills as well as collaborators. Collaborators do not
request any funds but express their specific interest by offering
access to data or specific support in terms of expertise through a
formal *letter of support*. For this grant, I would have sought
involvement of researchers with expertise in spatial proteomics and
biological data repositories;
[Kathryn Lilley](http://www.bioc.cam.ac.uk/people/uto/lilley) and
[Juan Antonio Vizcaíno](http://www.ebi.ac.uk/about/people/juan-vizcaino),
with whom I have published and collaborated in the past, would be
likely co-I's.


## `SpatialMap.org`: a modern platform to explore and share mass spectrometry-based spatial proteomics data

#### Applicants

**Laurent Gatto** (LG, PI), Computational Proteomics Unit (CPU),
Cambridge Centre for Proteomics (CCP), University of Cambridge, author
of state-of-the-art computational spatial proteomics software. He's a
fellow of the Software Sustainability Institute (SSI) and a Data
Champion and the University of Cambridge.

#### Suitability of the environment

LG and the Computational Proteomics Unit have a long-standing track
record in the development and publication of innovative algorithm and
open source software for the analysis and comprehension of mass
spectrometry-based spatial proteomics data
([Gatto *et al.*, 2014](http://bioinformatics.oxfordjournals.org/content/30/9/1322)).

### Scientific case

#### Background

Spatial proteomics is the systematic analysis of protein sub-cellular
locations. Knowledge of the exact location of a protein is of
paramount importance, as its whereabouts will define the biochemical
conditions of its environment and the presence of interacting
partners and hence, is essential for a protein to execute its intended
function.

There exists a wide several experimental procedure to elucidate the
sub-cellular location of a protein, that can be classified into
single-cell and single-protein imaging methods and high-throughput,
proteome-wide mass spectrometry-based methods
([Gatto *et al.*, 2010](http://www.ncbi.nlm.nih.gov/pubmed/21080489)). Here,
we will concentrate on the latter. The PI has extensive experience in
such methods, in particular the LOPIT
([Dunkley *et al.*, 2010](http://dx.doi.org/10.1073/pnas.0506958103))
and hyperLOPIT methods
([Christoforou *et al.*, 2016](http://www.nature.com/ncomms/2016/160112/ncomms9992/abs/ncomms9992.html),
[Mulvey *et al.*, 2016](https://www.nature.com/nprot/journal/v12/n6/full/nprot.2017.026.html)). His
group has developed numerous innovative analysis methods, ranging from
supervised, semi-supervised
([Breckels *et al.*, 2013](http://www.ncbi.nlm.nih.gov/pubmed/23523639))
and transfer learning
([Breckels *et al.*, 2016](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1004920))
algorithms, and the current state-of-the-art spatial proteomics
computational platform (Gatto *et al.*,
[2014a](http://bioinformatics.oxfordjournals.org/content/30/9/1322),
[2014b](http://www.mcponline.org./content/early/2014/05/20/mcp.M113.036350.abstract),
[Breckels *et al.*, 2016](https://f1000research.com/articles/5-2926/)),
including dedicated visualisation tools
([Gatto *et al.*, 2015](http://www.ncbi.nlm.nih.gov/pubmed/25690415),
[Breckels *et al.*, 2017](http://ComputationalProteomicsUnit.github.io/pRolocGUI/))
and tens of datasets
([Gatto *et al.*, 2014a](http://bioinformatics.oxfordjournals.org/content/30/9/1322)). Despite
the availability of these tools and data, the community would benefit
of an online resource to interactively visualise and explore spatial
proteomics experiments without the requirement for local software
installation and a platform to easily share and disseminate such data.

Some of the groups that published spatial proteomics data recently
also provide an online version of their
data. [Itzhak *et al* (2016)](http://dx.doi.org/10.7554/eLife.16950)
provide a limited interface to their HeLa spatial proteomics data at
[www.mapofthecell.org](http://www.mapofthecell.org/), while
[Jadot *et al.* (2017)](https://www.ncbi.nlm.nih.gov/pubmed/27923875)
offer their own data repository,
[Prolocate](http://prolocate.cabm.rutgers.edu/index.cgi). Both
single-data resources have simple search interfaces, but none of these
enable interactive exploration. We provide an
[interactive `pRolocGUI` app](https://lgatto.shinyapps.io/christoforou2015/)
to the mouse embryonic stem cell spatial proteome
([Mulvey *et al.*, 2016](http://www.nature.com/ncomms/2016/160112/ncomms9992/abs/ncomms9992.html))
with similar simple data-specific searches. While useful on their own,
these individual efforts hardly meet the need for a consistent,
interactive and modern interface across several datasets and don't
support easy dissemination of data.

#### Objectives

In this project, we propose to develop an online platform that will
offer (1) an interface to interactively navigate numerous experimental
mass spectrometry-based spatial proteomics data and (2) disseminate
(publicly and privately) experiments to facilitate collaboration and
wide dissemination of these data.

#### Preliminary data

We have already collected tens of spatial proteomics experiments
collected by multiple laboratories and covering all major experimental
designs currently available. These data have all been annotated and
prepared as dedicated computational `MSnSet` object
([Gatto *et al.*, 2012](http://www.ncbi.nlm.nih.gov/pubmed/22113085)). In
addition, we have worked on several interactive visualisation
applications, currently available as part of the shiny-based software
([Chang *et al.*, 2017](https://CRAN.R-project.org/package=shiny))
`pRolocGUI`
([Breckels *et al.*, 2017](http://ComputationalProteomicsUnit.github.io/pRolocGUI/)). Both
available software and data will form the basis for the development
the new resource we propose to develop and expand on.

#### Deliverables

The new resource, named **Spatial Map**, will be available at
[`www.SpatialMap.org`](http://www.SpatialMap.org/). It will feature an
**interactive interface** allowing to search and navigate multivariate
spatial proteomics data, similar to the
[*PCA app*](https://computationalproteomicsunit.github.io/pRolocGUI/articles/pRolocGUI.html#the-main-application)
from the `pRolocGUI` software (see figure below), an example of which
is [available](https://lgatto.shinyapps.io/christoforou2015) for the
recent mouse embryonic stem cell spatial proteomics data
([Christoforou *et al.*, 2016](http://www.nature.com/ncomms/2016/160112/ncomms9992/abs/ncomms9992.html)).


![The PCA application from the `pRolocGUI` package](https://computationalproteomicsunit.github.io/pRolocGUI/articles/figures/SS_PCA1.jpg)

To assure responsiveness of the application, we will identify the most
important features and re-implement them directly in JavaScript using
the `d3` library for fast and native online visualisation. The
interactive data visualisation will features links to external
resources such as [UniProt](http://uniprot.org/) and the
[Human Protein Atlas](http://www.proteinatlas.org/)
([Uhlén M *et al.*, 2015](dx.doi.org/10.1126/science.1260419)).

The data underlying the new resource will be provided by a new backend
to support native online visualisation, i.e. not relying on shiny and
R. This backend will be based on a **modern, web-ready data store**,
such as Google's [firebase](https://firebase.google.com/), and will
seamlessly integrate with current data available in `pRolocdata`,
enabling submission and retrieval of data from/to R. In particular, we
will provide, in the `pRolocdata` package, an interface to the online
data store that will mimic what is currently available for offline
data. In addition, the online store will also allow to distribute the
annotated spatial proteomics data online directly, in a generic format
such as JSON through a RESTful interface, accessible to any
programming language (currently, the data are only available to R
users and programmers).

As part of the new data backend, we will enable **searches across
datasets** to identify, for example, datasets from a species of
interest, datasets that document certain sub-cellular niches, or
specific proteins and their location across data and systems. We will
then use this new functionality to provide a large scale comparative
spatial proteomics study.

Finally, a novel and important feature of our proposed platform will
be a **modern and unique sharing and dissemination
platform**. Firstly, the resource will enable anyone to access
publicly available data currently in the
[`pRolocdata` package](https://bioconductor.org/packages/release/data/experiment/html/pRolocdata.html),
as well as those that will be added in the future. Note that
maintenance and synchronisation of the two resource will be supported
by a consistent interface between the two resource and automatic build
systems assuring identical data availability and data validity across
resources. In addition, we will also provide personal logins and
support private data upload. These private datasets will be
explorable, like their public counterparts, and it will be possible
for the users to share these with trusted collaborators. Logins will
be based on popular social media accounts such as Google, Facebook,
twitter, GitHub, ... as well as academic-related accounts such as
ORCID, to facilitate to usage of the platform. Upon publication, it
will be easy for the data submitters to make their data publicly
available and to publicise and share them through `SpatialMap.org`.

#### Project management

The project will be managed by LG and the researcher who will
implement the proposed resource will be located in the CPU. They will
collaborate and interact with computational scientists in the CPU as
well as experimentalists within the Cambridge Centre for Proteomics,
who generate spatial proteomics data and are the main audience of our
resource.

All the work and the discussions around the project advancement will
be centralised and recorded on GitHub (see for example the
[PI's](https://github.com/lgatto/) and
[CPU](https://github.com/ComputationalProteomicsUnit/) accounts for
existing and successful utilisation of GitHub) and the PI and
researcher will have regular meetings to discuss the project.

We will also include stakeholders to collect feedback and opinions
early on, to assure that the resource meets the requirements of its
future user base and identify the most important features beyond those
that we have already identified.

### Data management plan

For a complete data management plan, see
[Gatto L., 2017](http://riojournal.com/articles.php?id=11624).

### Justification of resources

*In a real application, this section would be much more detailed,
specifying exact amounts (the salary would be calculated by the
institution's research office, based on the kind of post that would be
needed) and project duration. Here, I just summarise what resources I
would need funding for.*

We request a salary for the researcher for the duration of the
project. While we indent to use freely available infrastructure as
much as possible, we also request dedicated funding to support the
payment for the hosting of the resource and payment for the domain
name for a duration of *n* years.

### Pathways to impact

There are several general areas that this research will have impact
on. These beneficiaries include the cell biology and proteomics
community, the computational biology community, industry, and
education and outreach.

The cell biology and proteomics communities are the first beneficiary
of `SpatialMap.org`, as it will provide instant and user-friendly,
interactive access to biologically relevant high-quality spatial
proteomics data. These data will also be of benefit to the
computational biology community, permitting easier integration of
protein localisation data in any computational pipelines. Due to the
importance of protein localisation and alteration thereof in drug
development, we expect our resource to be relevant for
industry. `SpatialMap.org` will more constitute a useful resource for
education and outreach, thanks to the easy and detailed, high-quality
protein localisation information.

Finally, we envision that our platform will become a unique and
essential resource for reviewers of spatial proteomics
publications. Our private access to data will enable to provide
restricted access to collaborators as well as reviewers, and we will
offer this free service to scientific journals.

## Implementation of the project

It turns out that, since the last meeting when I decided to write
about this project, [Robin Kohze](https://github.com/Kohze) from the
Radboud University Nijmegen, is visiting my group in the frame of his
master's internship. He has the right expertise (R and web
development) and interests, and has started working on the
project. Robin will benefit from student funding from his home
institution and the Erasmus programme, but there won't be any funding
for any additional resources.

## Final thoughts

By publishing this project, I hope to set a useful example on how to
promote better open research. I would also value feedback, comments
and suggestion to improve the project, i.e. open and constructive peer
review.

I suspect that publicly advertising one's research, before (or even in
absence) of any formal financial support can be seen as risky by many
due to potential scooping. I don't think that this is a genuine risk,
at least in my case. And if it where, I doubt that keeping this
project a secret would keep me safe from being scooped. In addition,
the `SpatialMap.org` page has been online for a while now, anyway.

The best possible outcome for publishing my research proposal would be
that this initiated interest, some sort of support and possibly even
new collaboration.
