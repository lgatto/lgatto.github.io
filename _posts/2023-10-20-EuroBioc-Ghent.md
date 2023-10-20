---
title: "CBIO's EuroBioc2023 posters and talks"
tags: ["conference", "software", "talks"]
comments: false
---

Long overdue now, but here are the [CBIO
lab](https://lgatto.github.io/cbio-lab/)'s contributions to the
[EuroBioc2023](https://eurobioc2023.bioconductor.org/) conference that
was organised on Ghent, on the 20 - 22 September 2023.

## Poster: A reliable and reproducible resource for CT genes

Julie Devis, Axelle Loriot, Charles De Smet and Laurent Gatto

Cancer-Testis (CT) genes are tissue-specific genes whose expression is
limited to the germline. They are normally repressed in somatic
tissues, but can be aberrantly activated in tumors. For many CT genes,
tumoral activation is enabled by loss of promoter DNA methylation. CT
genes are of great interest. First, they have clinical potential as
cancer-specific antigens, and can thus be used as target for cancer
immunotherapy and as cancer biomarkers. Second, they are also a good
model to study DNA demethylation in cancer, which is still poorly
understood.

The definition of CT genes differs vastly according to the literature
source. Some databases already exist [1,2,3] but they are neither
up-to-date nor well annotated, and thus difficult to use. There is
therefore a need for a reliable and reproducible resource when
studying CT genes. We therefor created CTexploreR, a package that
rigorously defines and explores CT genes. Our main objective was to
propose a reliable and well-defined list of CT genes based on publicly
available RNAseq databases.  We also determined their precise
transcription start site in order to be able to realise an accurate
promoter methylation analysis. Our list contains 307 CT genes that
were carefully classified as regulated by DNA methylation or not. We
also developed functions to visualise CT genes expression and promoter
DNA methylation in normal and tumoral tissues.

We also performed a thorough comparison of CTexploreR with the
available resources mentioned above. It allowed us to clearly
establish and characterise the difference between CT lists and clarify
the origins of the inconsistencies. These analyses demonstrate that
CTexploreR is a clear, curated and rigorously established up-to-date
reference. Our package can thus be used as the starting point for
further investigations.


[1] Almeida, L. G., Sakabe, N. J., deOliveira, A. R., Silva, M. C. C.,
    Mundstein, A. S., Cohen, T., Chen, Y.-T., Chua, R., Gurung, S.,
    Gnjatic, S., Jungbluth, A. A., Caballero, O. L., Bairoch, A.,
    Kiesler, E., White, S. L., Simpson, A. J. G., Old, L. J., Camargo,
    A. A., & Vasconcelos, A. T. R. (2009). CTdatabase: a
    knowledge-base of high-throughput and curated data on
    cancer-testis antigens. Nucleic Acids Research, 37(Database
    issue), D816-9.

[2] Jamin, S. P., Hikmet, F., Mathieu, R., Jégou, B., Lindskog, C.,
    Chalmel, F., & Primig, M. (2021). Combined RNA/tissue profiling
    identifies novel Cancer/testis genes. Molecular Oncology, 15(11),
    3003–3023.

[3] Wang, C., Gu, Y., Zhang, K., Xie, K., Zhu, M., Dai, N., Jiang, Y.,
    Guo, X., Liu, M., Dai, J., Wu, L., Jin, G., Ma, H., Jiang, T.,
    Yin, R., Xia, Y., Liu, L., Wang, S., Shen, B., … Hu,
    Z. (2016). Systematic identification of genes with a cancer-testis
    expression pattern in 19 cancer types. Nature Communications, 7,
    10499.


## Workshop: CytoPipeline: Building and visualizing automated pre-processing and quality control pipelines for flow cytometry data

[Workshop repo](https://github.com/phauchamps/CytoPipeline_BiocWS) and
[pre-print](https://www.biorxiv.org/content/10.1101/2023.10.10.561699v1)

Philippe Hauchamps, Dan Lin and Laurent Gatto

With the increase of the dimensionality in conventional flow cytometry
data over the past years, there is a growing need to replace or
complement traditional manual analysis (i.e. iterative 2D gating) with
automated data analysis pipelines. Examples of such pipelines have
been documented in the recent literature (e.g. [1],[2],[3]). A crucial
part of these pipelines consists of pre-processing and applying
quality control filtering to the raw data, in order to use high
quality events in the downstream statistical analysis. This part can
in turn be split into a number of elementary steps : margin events
removal, signal compensation, scale transformations, debris and dead
cells removal, batch effect correction,… etc.

However, when designing automated flow cytometry data analysis
pipelines, assembling and assessing the pre-processing part can be
challenging for a number of reasons. First, each of the involved
elementary steps can be implemented using various methods and R
packages. Second, the order of the steps can have an impact on the
downstream analysis results. Finally, each method typically comes with
its specific, unstandardized diagnostic and visualizations, making
objective comparison difficult for the end user.

Here, we present CytoPipeline, an R package suite for building,
assessing and comparing pre-processing pipelines for flow cytometry
data. To exemplify our tool, we present the steps involved in
designing a pre-processing pipeline on a real life dataset and
demonstrate the visualization utilities. We also show how CytoPipeline
can nicely complement benchmarking tools, like e.g. PipeComp [4], by
providing user intuitive insight into benchmarking results.


[1] Quintelier, Katrien, Artuur Couckuyt, Annelies Emmaneel, Joachim
    Aerts, Yvan Saeys, and Sofie Van Gassen. 2021. “Analyzing
    High-Dimensional Cytometry Data Using FlowSOM.” Nature Protocols
    16 (8): 3775–3801.

[2] Ashhurst, Thomas Myles, Felix Marsh-Wakefield, Givanna Haryono
    Putri, Alanna Gabrielle Spiteri, Diana Shinko, Mark Norman Read,
    Adrian Lloyd Smith, and Nicholas Jonathan Cole
    King. 2021. “Integration, Exploration, and Analysis of
    High-Dimensional Single-Cell Cytometry Data Using Spectre.”
    Cytometry. Part A: The Journal of the International Society for
    Analytical Cytology, no. cyto.a.24350
    (April). https://doi.org/10.1002/cyto.a.24350.

[3] Nowicka, Malgorzata, Carsten Krieg, Helena L. Crowell, Lukas
    M. Weber, Felix J. Hartmann, Silvia Guglietta, Burkhard Becher,
    Mitchell P. Levesque, and Mark D. Robinson. 2017. “CyTOF Workflow:
    Differential Discovery in High-Throughput High-Dimensional
    Cytometry Datasets.” F1000Research 6 (May): 748.

[4] Germain, Pierre-Luc, Anthony Sonrel, and Mark
    D. Robinson. 2020. “pipeComp, a General Framework for the
    Evaluation of Computational Pipelines, Reveals Performant Single
    Cell RNA-Seq Preprocessing Tools.” Genome Biology 21 (1): 227.

## Poster: `fmsne` - fast multi-scale neighbour embedding in R

Laurent Gatto and Cyril de Bodt

Dimensionality reduction (DR) has been a workhorse of large scale,
multivariate omics data analysis from the early days. Since the advent
of single-cell RNA sequencing, non-linear approaches have taken the
front stage, with t-distributed stochastic neighbour embedding (t-SNE)
[1,2] being one of, if not the main player. Packages such as `Rtsne`
[3] and `scater` [4] have made it easy to apply t-SNE in
R/Bioconductor workflows.

One sticking point with t-SNE is the single perplexity parameter, that
controls the number of nearest high-dimensional (HD) neighbours that
are taken into account when constructing the low-dimensional (LD)
embedding: small (resp. large) values only enable preserving small
(resp. large) neighbourhoods from HD to LD during DR, impairing the
reproduction of large (resp. small) neighbourhoods. It is thus a key
parameter, especially if the LD embedding is used for interpretation,
which is often the case in omics-based applications.

Multi-scale neighbour embedding [5] is an extension to single-scale
approaches such as t-SNE, that exempt users from having to set a
single perplexity (scale) arbitrarily. Multi-scale approaches maximise
the LD embedding quality at all scales, preserving both local and
global HD neighbourhoods [6]. They have been shown to better capture
the structure of data and to significantly improve DR quality [7].

Here, we present `fmsne` (https://github.com/lgatto/fmsne), an R
package that relies on the `basiliks` package [8] to provide
Bioconductor-friendly interface to fast multi-scale methods
implemented in python. `fmsne` implements fast multi-scale functions
such as `runFMSTSNE()` and `plotFMSTSNE()`, based on scater's
`scater::run*()` and `scater::plot*()` interface [4]. It also exposes
the `drQuality()` function to assess DR quality using rank-based
criteria [7]. Finally, we illustrate fast multi-scale methods on
various single-cell datasets.

[1] van der Maaten, L., & Hinton, G. (2008). Visualizing data using
    t-SNE. _Journal of Machine Learning Research_, 9(Nov), 2579-2605.

[2] van der Maaten, L. (2014). Accelerating t-SNE using tree-based
    algorithms. _Journal of Machine Learning Research_, 15(1),
    3221-3245.

[3] Jesse H. Krijthe (2015). Rtsne: T-Distributed Stochastic Neighbor
    Embedding using a Barnes-Hut Implementation, URL:
    https://github.com/jkrijthe/Rtsne

[4] McCarthy DJ, Campbell KR, Lun ATL, Willis QF (2017). Scater:
    pre-processing, quality control, normalisation and visualisation
    of single-cell RNA-seq data in R. _Bioinformatics_, 33,
    1179-1186. doi:10.1093/bioinformatics/btw777

[5] C. de Bodt, D. Mulders, M. Verleysen and J. A. Lee, "Fast
    Multiscale Neighbor Embedding," in _IEEE Transactions on Neural
    Networks and Learning Systems_, 2020, doi:
    10.1109/TNNLS.2020.3042807.

[6] Lee, J. A., Peluffo-Ordóñez, D. H., & Verleysen,
    M. (2015). Multi-scale similarities in stochastic neighbour
    embedding: Reducing dimensionality while preserving both local and
    global structure. _Neurocomputing_, 169, 246-261.

[7] Lee, J. A., & Verleysen, M. (2009). Quality assessment of
    dimensionality reduction: Rank-based criteria. _Neurocomputing_,
    72(7-9), 1431-1443.

[8] Lun ATL (2022). basilisk: a Bioconductor package for managing
    Python environments. _Journal of Open Source Software_,
    7, 4742. doi:10.21105/joss.04742.

## Talk: Linear models for single-cell proteomics

Christophe Vanderaa and Laurent Gatto

Mass spectrometry (MS)-based single-cell proteomics (SCP) has become a
credible player in the single-cell biology arena [1,2]. Continuous
technical improvements have pushed the boundaries of sensitivity and
throughput. However, the computational efforts to support the analysis
of these complex data have been missing. Strong batch effects coupled
to high proportions of missing values complicate the analysis, causing
strong entanglement between biological and technical variability
[3,4].

We propose a simple, yet powerful approach to address this need:
linear models. We use linear regression to model and remove undesired
technical factors while retaining the biological variability, even in
the presence of high proportions of missing values. The key advantage
of linear models lies in the interpretability of the results they
generate. Inspired by previous research [5], we streamlined modelling
and exploration of the patterns induced by known technical and
biological factors. The exploration enables a thorough assessment of
the model coefficients, and highlights key factors influencing
SCP experiments. Further exploration of the unmodelled variance
recovers unknown but biologically relevant patterns in the data,
leveraging the power of single-cell proteomics technologies. We
successfully applied our approach to a diverse collection of SCP
datasets [6], and could demonstrate that it is also amenable for
integrating datasets acquired using different technologies.

We implemented and documented this approach in our Bioconductor
package scp [7]. In summary, our approach represents a turning point
for principled SCP data analysis, moving the tension point from how to
perform the analysis to result generation and interpretation.

[1] “Single-Cell Proteomics: Challenges and Prospects.” 2023. Nature
    Methods 20 (3): 317–18.

[2] Bennett HM, Stephenson W, Rose CM, and Darmanis S. 2023.
    “Single-Cell Proteomics Enabled by next-Generation Sequencing or
    Mass Spectrometry.” Nature Methods, March.

[3] Vanderaa C, and Gatto L. 2021. “Replication of Single-Cell
    Proteomics Data Reveals Important Computational Challenges.”
    Expert Review of Proteomics, October, 1–9.

[4] Vanderaa C, and Gatto L. 2023. “The Current State of Single-Cell
    Proteomics Data Analysis.” Current Protocols 3 (1): e658.

[5] Thiel M, Féraud B, Govaerts B. 2017. “ASCA+ and APCA+: Extensions
    of ASCA and APCA in the Analysis of Unbalanced Multifactorial
    Designs.” Journal of Chemometrics 31 (6): e2895.

[6] Vanderaa C, and Gatto L.. scpdata: Single-Cell Proteomics Data
    Package. R package verison 1.6.0,
    <https://bioconductor.org/packages/release/data/experiment/html/scpdata.html>.

[7] Vanderaa C, and Gatto L.. scp: Mass Spectrometry-Based Single-Cell
    Proteomics Data Analysis. R package version 1.8.0,
    <https://bioconductor.org/packages/release/bioc/html/scp.html>.


## Workshop: `Spectra` -  an expandable infrastructure to handle mass spectrometry data

Johannes Rainer, Sebastian Gibb, Laurent Gatto

Mass spectrometry (MS) data is a key technology in modern metabolomics and
proteomics experiments. Continuous improvements in MS instrumentation, larger
experiments and new technological developments lead to ever growing data sizes
and increased number of available variables making *standard* in-memory data
handling and processing difficult.

The `Spectra` package provides a modern infrastructure for MS data handling
specifically designed to enable extension to additional data resources or
alternative data representations. These can be realized by extending the virtual
`MsBackend` class and its related methods. Implementations of such `MsBackend`
classes can be tailored for specific needs, such as low memory footprint, fast
processing, remote data access, or also support for specific additional data
types or variables. Importantly, data processing of `Spectra` objects is
independent of the backend in use due to a *lazy evaluation* mechanism that
caches data manipulations internally.

This workshop discusses different available data representations for MS data
along with their properties, advantages and performances. In addition,
`Spectra`'s concept of lazy evaluation for data manipulations is presented, as
well as a simple caching mechanism for data modifications. Finally, it explains
how new `MsBackend` instances can be implemented and tested to ensure
compliance.

## Workshop: The R for Mass Spectrometry initiative - from raw data to identifications and quantitative proteomics data analysis

Laurent Gatto, Sebastien Gibb and Johannes Rainer

The aim of the RforMassSpectrometry initiative
(https://www.rformassspectrometry.org/) is to provide efficient,
thoroughly documented, tested and flexible R software for the analysis
and interpretation of high throughput mass spectrometry assays. In
this software demo, we will demonstrate three software packages that
are central for proteomics data analysis.

- The Spectra package [1], that defines an efficient infrastructure
  for storing and handling mass spectrometry spectra and functionality
  to subset, process, visualise and compare spectra data.

- The PSMatch package [2] allows to load, process and analyse
  peptide-spectrum matches, and can, among others, explore and
  deconvolute the peptide-protein (group) relations using adjacency
  matrices and connected components.

- The QFeatures package [3] provides infrastructure to management and
  process quantitative features for high-throughput mass spectrometry
  assay, in particular so across assay levels (such as precursors,
  peptide spectrum matches, peptides and proteins or protein groups)
  in a coherent and tractable format.

We will conclude by illustrating how the MsExperiment package [5] can
be used to bundle these three types of data together.

[1] Gatto L et al. (2023). _Spectra Infrastructure for Mass
    Spectrometry Data_, R package version
    1.9.15. <https://rformassspectrometry.github.io/Spectra/>.

[2] Gatto L, Rainer J, Gibb S (2023). _PSMatch: Handling and Managing
    Peptide Spectrum Matches_. R package version 1.3.3,
    <https://github.com/RforMassSpectrometry/PSM>.

[3] Gatto L, Vanderaa C (2023). _QFeatures: Quantitative features for
    mass spectrometry data_. R package version 1.9.3,
    <https://github.com/RforMassSpectrometry/QFeatures>.

[4] Gatto L, Rainer J, Gibb S (2022). _MsExperiment: Infrastructure
    for Mass Spectrometry Experiments_. R package version 1.0.0,
    <https://github.com/RforMassSpectrometry/MsExperiment>.

## Poster: A mixed-cell control design to assess data processing in single-cell proteomics

Samuel Grégoire, Sébastien Pyr dit Ruys, Christophe Vanderaa, Didier Vertommen and Laurent Gatto

Single-cell proteomics (SCP) aims at studying cellular heterogeneity
by focusing on the functional effectors of the cells, proteins. While
this is essential to identify cells undergoing subtle processes and
point out underlying relevant protein and proteoform abundance
patterns, assessing protein content inside a single cell is
challenging.

Thanks to recent breakthroughs in mass spectrometry and sample
processing, it has become possible to increase the depth of proteome
covered, reduce the time needed to analyse a cell and make this
technology more accessible [1].

However, extracting meaningful biological information from this type
of data requires robust and suitable data analysis methods. Progress
in this field is tempered by the lack of standardised
workflows. Currently, data analysis workflows are custom made and
substantially different from one research team to another
[2]. Moreover, it is difficult to evaluate specific steps or entire
pipelines as ground truths are missing. In an effort to bridge the gap
towards the standardisation of SCP data analysis, our team has
developed the scp package [3] relying on the QFeatures and
SingleCellExperiment infrastructures to provide a standardised
framework for SCP data analysis. In addition, we produced our own SCP
datasets to constitute a basis for data analysis benchmarking. To this
end, we used a design containing cell lines mixed in known proportions
to generate controlled variability [4].

In this work, we used the scp package to test different combinations
of data processing steps and evaluated them using our ground truth
data. We illustrate how we benefited from this modular, standardised
framework and highlight some crucial steps.

[1] Slavov, Nikolai. Scaling Up Single-Cell Proteomics. Molecular &
    Cellular Proteomics 21, no 1 (2022): 100179.
    https://doi.org/10.1016/j.mcpro.2021.100179.

[2] Vanderaa, Christophe, and Laurent Gatto. 2023. The Current State
    of Single-Cell Proteomics Data Analysis. Current Protocols 3 (1):
    e658. https://doi.org/10.1002/cpz1.658

[3] Vanderaa Christophe and Laurent Gatto. Replication of Single-Cell
    Proteomics Data Reveals Important Computational Challenges.
    Expert Review of Proteomics, 1–9
    (2021). https://doi.org/10.1080/14789450.2021.1988571

[4] Tian, L., Dong, X., Freytag, S. et al. Benchmarking single cell
    RNA-sequencing analysis pipelines using mixture control
    experiments.  Nat Methods 16, 479–487
    (2019). https://doi.org/10.1038/s41592-019-0425
