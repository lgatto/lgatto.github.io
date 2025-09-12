---
title: "CBIO's EuroBioc2025 posters and talks"
tags: ["conference", "software", "talks", "CBIO"]
comments: false
---

Before I forget posting this year's lab EuroBioc contribution, here
are the abstract of the work we will present at the [EuroBioc2025 in
Barcelona](https://eurobioc2025.bioconductor.org/)

# PSMatch: a Bioconductor Package for Handling Peptide-Spectrum Matches Data

Guillaume Deflandre, Sebastian Gibb and Laurent Gatto

Loading, exploring and analysing the resulting Peptide-Spectrum
Matches (PSMs) from a database search in Mass Spectrometry (MS)-based
proteomics can be time-consuming. *PSMatch* is an R/Bioconductor
package designed to handle this process by offering functionalities to
streamline exploration and visualisation of PSM data. It provides
functions to load PSM data from mzId or tabular files, generate
theoretical fragment ions, model peptide-protein relations and
facilitate visualisations.

Recent developments in *PSMatch* have focused on extending these
functionalities to support post-translational modifications, enabling
more accurate characterisation of modified peptides. Effort in
identifying modified peptides is needed as it is these peptides that
are expected to constitute a significant proportion of unidentified
spectra. In fields such as single-cell proteomics or metaproteomics,
where the identification rates pale by comparison with bulk
approaches, this becomes even more prominent.  Enabling users to
benefit from a powerful and flexible R ecosystem to further explore
these unidentified spectra is therefore paramount.

*PSMatch* is part of the *R for Mass Spectrometry* initiative, that
develops an open and collaborative ecosystem of MS-based proteomics
and metabolomics, offering efficient, scalable, and stable
infrastructure for MS-based proteomics.

And here's the relevant
[preprint](https://osf.io/preprints/osf/62v9p_v2).

# An Open Software Development-based Ecosystem of R Packages for Mass Spectrometry Data Analysis

Laurent Gatto, Sebastian Gibb and Johannes Rainer

A frequent problem with scientific research software is the lack of
support, maintenance and further development. In particular,
development by a single researcher can easily result in orphaned and
dysfunctional software packages, especially if combined with poor
documentation, missing unit tests or lack of adherence to open
software development standards. The RforMassSpectrometry
(https://www.rformassspectrometry.org/) initiative aims to develop an
efficient, scalable, and stable infrastructure for mass spectrometry
(MS) based proteomics and metabolomics data analysis. As part of this
initiative, a growing ecosystem of R software packages is being
developed covering different aspects of metabolomics and proteomics
data analysis. To avoid the aforementioned problems, community
contributions are fostered, and open development, documentation and
long-term support emphasised.

At the heart of the package ecosystem lies the *Spectra* package that
provides the core infrastructure to handle, process and visualise MS
data. Its design allows easy expansion to support existing and new
file or data formats, including data representations with minimal
memory footprint or remote data access. For proteomics data analysis,
two packages in particular are dedicated to the analysis or
quantitative and identification data. The *PSMatch* package handles
and manages peptide identification data. It also provides functions to
model and visualise peptide-protein relations to make informed
decision about shared peptide filtering. The package also provides
functions to calculate and visualise MS2 fragment ions, in conjunction
with the *Spectra* package. The *QFeatures* package is the working
horse for quantitative proteomics data. It builds on the familiar
*SummarizedExperiment* and *MultiAssayExperiment* infrastructure and
provides a familiar Bioconductor user experience to manage bulk and
single-cell quantitative data across different assay levels (such as
peptide spectrum matches, peptides and proteins) in a coherent and
tractable way.

For metabolomics data analysis, *xcms* is one of the core software
packages for the required preprocessing of LC-MS data. This
Bioconductor package was recently updated to reuse the R for Mass
Spectrometry infrastructure, enabling now also the analysis of very
large, and/or remote, data. This integration simplifies in addition
complete analysis workflows which can include functionality from the
*MsFeatures* package for compounding, and from the *MetaboAnnotation*
package facilitating annotation of untargeted metabolomics
experiments. Public annotation resources can be easily accessed
through packages such as *MsBackendMassbank*, *MsBackendMsp* or
*CompoundDb*, the latter also allowing to create and manage
lab-specific compound databases.  These packages rely on the
*MsCoreUtils* and *MetaboCoreUtils* packages for efficient
implementations of commonly used algorithms, designed to be re-used by
other R packages.

In contrast to a monolithic software design, the R for Mass
Spectrometry ecosystem enables to build customised, modular, and
reproducible analysis workflows. Future proteomics- and
metabolomics-related development will focus on improved data
structures and analysis methods, better support for third-party data
import, and better interoperability with other open source software.

> Gatto, L., Gibb, S., & Rainer, J. (2025). An Open Software
> Development-based Ecosystem of R Packages for Mass Spectrometry Data
> Analysis. European Bioconductor Conference (EuroBioc2025),
> Barcelona, Spain. Zenodo. https://doi.org/10.5281/zenodo.17105729

# Benchmark of Module Detection Methods for Single Cell Proteomics

Enes Sefa Ayar and Laurent Gatto

Proteins are the key molecules in executing biological functions, and they
cooperate as part of protein complexes or biological pathways. Correlation
in their abundance suggests functional interdependence, offering insights
into biological functions. Thus, identifying biologically meaningful protein
groups (modules) is a critical step in understanding cellular processes.
While many module detection methods exist, they were developed for bulk or
transcriptomic data and rely on the assumption that gene expression levels
can identify functionally related protein groups.

Single-cell proteomics (SCP) quantifies protein levels at single-cell
resolution, eliminating this assumption and offering a more accurate view
of functional protein relationships. Moreover, SCP preserves cellular
heterogeneity, enabling the discovery of dynamic and context-specific
protein modules are often masked in bulk measurements. Despite these
advantages, existing module detection methods may not be well suited for
SCP data, which presents unique challenges such as batch effects and
missing values.

Moreover, these methods also differ by various features, for instance,
whether they incorporate (or not) prior biological knowledge, whether they
allow (or not) overlapping modules, or to what extent they use differential
correlation analysis. Parameter choices further influence the identified
modules, often leading to arbitrary decisions. However, all share a more
critical limitation: they generate modules even when applied to random data.
It is therefore essential to distinguish biologically relevant modules from
artifacts.

In this work, we systematically evaluate module detection methods on SCP
datasets. Our assessment framework integrates (1) internal clustering metrics
to evaluate compactness and separation, (2) external validation against known
biological annotations, and (3) network-based analyses incorporating
protein-protein interaction data to enhance biological interpretability. Our
findings reveal notable differences in the biological relevance of the
identified modules and offer practical recommendations for selecting and
validating module detection approaches for single-cell proteomics. Furthermore,
we propose strategies for addressing missing values and batch effects, thereby
improving the accuracy and reliability of module detection.

# e-OMIX, a new visual interface for analyzing and managing omics data

Molka Anaghim Ftouhi, Loïc Guille, Jérôme Linden, Sébastien Jodogne and Laurent Gatto

The e-OMIX project (https://www.eomix.be) aims to lower the barrier of
entry into omics research by providing an interactive platform where
users will be able to perform analyses, as well as storing the
resulting data and metadata, without the need for advanced coding
skills. e-OMIX is developed under AGPL 3 license as an
Angular/Java-based web-app, making use of several innovative
technologies. Pre-built pipelines are implemented from nf-core, a
repository of publicly available workflows, maximizing their
reproducibility and ease of use. Result matrices are stored in a
database optimized for fast querying of large datasets (TileDB) and
can be exported in several objects notably 'Bioconductor's SingleCell
Expriment (SCE) or other (anndata, or Seurat), while metadata are
stored as per-sample individual documents in a document-oriented
database (CouchDB). To increase the interoperability of metadata,
e-OMIX also offers the possibility to manage and export them using
Fast Healthcare Interoperability Resources (FHIR), a widely used
standard in healthcare and clinical research. Finally, data
visualization is made possible by using the *iSEE* R/Biocondutor
package. As a first use case, we demonstrate the end-to-end execution
of single-cell RNA-seq pipeline, starting from metadata and raw files
upload, and leading to actionable data, such as annotated cell types,
individual gene expression or marker gene identification.

# Tools and Strategies for Systematic Benchmarking of R Packages: A Case Study with QFeatures

Léopold Guyot and Laurent Gatto

As bioinformatics continues to evolve, it must keep pace with
experimental techniques that generate increasingly large volumes of
data. In this context, optimizing the performance of code and packages
that handle these data becomes essential. This work presents the
optimization efforts carried out on the QFeatures R/Bioconductor
package, which is used for the analysis of quantitative proteomics
data. We also highlight a set of tools and methods that are valuable
for performance optimization, with a particular focus on
[VerR](https://leopoldguyot.github.io/VerR/), an R package designed to
create isolated and reproducible environments. These environments
allow for the installation of specific package versions, enabling
systematic benchmarking to assess the performance impact of different
versions. As a result of these optimization efforts, we observed a 90%
reduction in the runtime of a classical single-cell proteomics (scp)
workflow and a 50% decrease in memory usage, demonstrating the
significant impact of targeted optimizations.