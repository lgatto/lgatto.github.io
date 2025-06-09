---
title: "CBIO's EuroBioc2024 posters and talks"
tags: ["conference", "software", "talks", "CBIO"]
comments: false
---

The lab is preparing for [EuroBioc2025 in
Barcelona](https://eurobioc2025.bioconductor.org/), and I realise that
I forgot to post our contributions to [EuroBioc2024 in
Oxford](https://eurobioc2024.bioconductor.org/). So here they are
(with papers that were published in the meantime).

## Differential Correlation Analysis and Biological Function Inference on Single Cell Proteomics

Author(s): Enes Sefa Ayar, Laurent Gatto

Proteins are the key molecules in executing biological functions
within cells. They operate in cooperation with other proteins to carry
out these functions as part of protein complexes, or biological
pathways. Thus, the correlation among these proteins implies a
functional interdependence, offering insights into both biological
functions and mechanisms. Differential correlation analysis promises
to infer these biological functions and even underlying mechanisms by
identifying similar or different correlation patterns in groups of
proteins across conditions (ex. cell types, treatments). However,
current approaches, particularly those developed for bulk
measurements, may not be suitable for single-cell proteomics (SCP)
datasets as they may overlook false positives and false negatives
emerging due to batch effects or missing values.

We aim to investigate the most suitable approach for uncovering
functional correlation in SCP datasets. We compared two approaches
used in SCP [1, 2] and two other network-based methods [3, 4],
commonly used in RNAseq studies. This benchmark involves comparing
these methods across various SCP datasets from scpdata package, each
with different properties including sample size, protein coverage, and
missing values. Thus far, our observations indicate the importance of
addressing batch effect-driven correlations. Our benchmark assesses
the methods based on biological relevance, statistical significance,
and data simulations.

#### References

[1] Hu, M., Zhang, Y., Yuan, Y., Ma, W., Zheng, Y., Gu, Q., & Xie,
X. S. (2023). Correlated protein modules revealing functional
coordination of interacting proteins are detected by single-cell
proteomics. The Journal of Physical Chemistry B, 127(27), 6006–6014.

[2] Khan, S., Conover, R., Asthagiri, A. R., & Slavov,
N. (2023). Dynamics of Single-Cell Protein Covariation during
Epithelial–Mesenchymal Transition.

[3] Langfelder, P., & Horvath, S. (2008). WGCNA: An R package for
weighted correlation network analysis. BMC Bioinformatics, 9(1).

[4] Song, W.-M., & Zhang, B. (2015). Multiscale embedded gene
co-expression network analysis. PLOS Computational Biology, 11(11).

## Bulk vs single-cell proteomics: is there a need for identification optimization?

Author(s): Guillaume Deflandre, Samuel Grégoire, Laurent Gatto

Single-cell proteomics (SCP) has emerged as a powerful tool for
elucidating cellular heterogeneity, offering opportunities beyond
traditional bulk sample analysis. However, the application of current
peptide identifications crafted for bulk samples may lead to false
discoveries in SCP. Challenges such as reduced peak counts, lower peak
intensities, and degraded signal-to-noise ratios (as identified by
Boekweg et al. [1]) raise the question: do current peptide scoring
methods in search engines adequately perform in the context of SCP? To
address these limitations, we explore the effectiveness of search
engines and rescoring tools with the use of Bioconductor packages
PSMatch and Spectra. Rescoring tools take profit of as many mass
spectrometry-based features as possible, such as spectral
characteristics and retention time models, which can be particularly
relevant to mitigate the poor quality of SCP spectra. We used
MS²Rescore to generate new features, Mokapot to rescore the SCP
peptides as well as the above-mentioned packages to assess the
efficiency of rescoring tools and potentially improve current scoring
methods in the context of SCP. Our findings demonstrate a significant
increase in confidently identified peptides upon rescoring. In
addition, we suggest a 4-step methodology to evaluate the usefulness
of current and new potential features. Finally, our results shed light
on the differences between bulk and single-cell samples whilst
providing insights that can inform more accurate and reliable data
interpretation in the context of SCP.

#### References

[1] Hannah Boekweg and Samuel H. Payne. Challenges and Opportunities
for Single-cell Computational Proteomics. Molecular & Cellular
Proteomics, 22(4):100518, April 2023. ISSN 15359476. doi:
10.1016/j.mcpro.2023.100518. URL
https://linkinghub.elsevier.com/retrieve/pii/S1535947623000282.

## From Cancer-Testis genes to Cancer-Testis enhancers

Author(s): Julie Devis, Axelle Loriot, Charles De Smet and Laurent Gatto

Cancer-Testis (CT) genes are normally expressed only in germ cells and
not in healthy somatic tissues. However, they are aberrantly activated
in many tumours. Many CT genes are regulated by methylation. Their
promoters are highly methylated in all healthy somatic tissues and
demethylated in germ cells. They are also demethylated in tumours in
which they are activated. This is a consequence of the global
demethylation process often observed in cancer. These characteristics
give them clinical potential, as they produce cancer-specific antigens
and can thus be used as target for cancer immunotherapy. We have
recently developed the CTexploreR Bioconductor package, an updated
database for CT genes.

Promoters are not the only regulatory regions that can be affected by
DNA methylation. It has been shown that many enhancers, that are
activating distal regulatory regions, can be methylated. Their
methylation can be altered in tumours, affecting the expression of
their target genes. We hence wondered if we could find CT enhancers
that would behave like CT genes promoters. We compared ENCODE
cis-regulatory elements and whole genome bisulfite-seq data in somatic
and germinal healthy tissues and in cancer to find enhancers that are
active and demethylated exclusively in germ cells and tumours. We
identified CT-like enhancer candidates that will be further defined.

## An Open Software Development-based Ecosystem of R Packages for Proteomics Data Analysis

Author(s): Laurent Gatto and RforMassSpectrometry contributors

A frequent problem with scientific research software is the lack of
support, maintenance and further development. In particular,
development by a single researcher can easily result in orphaned and
dysfunctional software packages, especially if combined with poor
documentation, missing unit tests or lack of adherence to open
software development standards.

The RforMassSpectrometry (https://www.rformassspectrometry.org/)
initiative aims to develop an efficient, scalable, and stable
infrastructure for mass spectrometry (MS) based proteomics (Gatto et
al. poster) and metabolomics (Rainer et al. poster) data analysis. As
part of this initiative, a growing ecosystem of R software packages is
being developed covering different aspects of metabolomics and
proteomics data analysis. To avoid the aforementioned problems,
community contributions are fostered, and open development,
documentation and long-term support emphasised.

At the heart of the package ecosystem lies the Spectra package that
provides the core infrastructure to handle, process and visualise MS
data. Its design allows easy expansion to support existing and new
file or data formats, including data representations with minimal
memory footprint or remote data access. For proteomics data analysis,
two packages in particular are dedicated to the analysis or
quantitative and identification data. The PSMatch package handles and
manages peptide identification data. It also provides functions to
model and visualise peptide-protein relations to make informed
decision about shared peptide filtering. The package also provides
functions to calculate and visualise MS2 fragment ions, in conjunction
with the Spectra package. The QFeatures package is the working horse
for quantitative proteomics data. It builds on the familiar
SummarizedExperiment and MultiAssayExperiment infrastructure and
provides a familiar Bioconductor user experience to manage bulk and
single-cell quantitative data across different assay levels (such as
peptide spectrum matches, peptides and proteins) in a coherent and
tractable way. These three packages rely on MsCoreUtils for efficient
implementations of commonly used algorithms, designed to be re-used by
other R packages.

In contrast to a monolithic software design, the RforMassSpectrometry
ecosystem enables to build customised, modular, and reproducible
analysis workflows. Future proteomics-related development will focus
on improved data structures and analysis methods, better support for
third-party data import, and better interoperability with other open
source software including a direct integration with Python MS
libraries.

#### Publication

Loriot, Axelle, Julie Devis, Laurent Gatto, and Charles De
Smet. 2025. “A Survey of Human Cancer-Germline Genes: Linking X
Chromosome Localization, DNA Methylation and Sex-Biased Expression in
Early Embryos.” bioRxiv. https://doi.org/10.1101/2025.05.19.654804.

## Mass spectrometry-based proteomics/metabolomics and Bioconductor: from the early days to 2024

Author(s): Laurent Gatto, Sebastien Gibb, Johannes Rainer

The Bioconductor project has always been best known for its
state-of-the-art infrastructure for genomics data analysis and
comprehension. Starting with packages for microarrays, and later RNA
Sequencing, transcriptomics has been the most visible part of the
Bioconductor iceberg. Proteomics has been part of the early days of
the project, with the PROcess package to process SELDI-TO-MS data,
that was cited/documented in the very first Bioconductor paper (2004)
and monograph (2005). Proteomics and metabolomics have grown
substantially since these early days, both in terms of packages,
community contributions, and user base, culminating in the R for Mass
Spectrometry initiative. In this short talk, I will provide an
overview of how the mass spectrometry-based proteomics and
metabolomics infrastructure has evolved since the early days, and what
the goals for the future are.

## Comprehensive and standardised workflow for single-cell proteomics data analysis using scp and scplainer.

Author(s): Samuel Grégoire, Christophe Vanderaa and Laurent Gatto

Single cell proteomics (SCP) via mass spectrometry has become
achievable thanks to technological advancements innovated by various
research teams, resulting in a broad landscape of cutting-edge
methodologies [1]. While this progress has enabled the measurement of
thousands of proteins at the single cell resolution, it has also
resulted in various complex and divergent analysis workflows. To
efficiently tackle biologically relevant questions, the field of SCP
must confront the challenges inherent in SCP data. SCP data are
particularly prone to technical variations, batch effects, and missing
values [2].

To address these challenges, our team has developed several tools
packaged within the scp R/Bioconductor package. The latest addition is
the scplainer approach, which offers a standardised approach grounded
in linear modeling. scplainer provides key tools to extracts
meaningful insights from SCP data through variance analysis,
differential abundance analysis and component analysis, while
streamlining the visualisation of the results. Integrated into the scp
package, scplainer leverages QFeatures and SingleCellExperiment
infrastructures, providing a comprehensive interface with numerous
data processing functions. In addition, we also developed scpdata, a
package containing standardised and annotated single-cell proteomics
data, which we are still actively extending.

In this work, we provide a comprehensive overview of SCP data
processing using the scp package, starting from the output table
generated by the search engine software through data processing,
modeling and downstream analyses.

#### References

[1] Petrosius et Schoof (2023), *Recent advances in the field of
single-cell proteomics*.

[2] Vanderaa et Gatto (2021), *Replication of single-cell proteomics
data reveals important computational challenges*.

#### Publication

Grégoire, Samuel, Christophe Vanderaa, Sébastien Pyr dit Ruys,
Christopher Kune, Gabriel Mazzucchelli, Didier Vertommen, and Laurent
Gatto. 2024. “Standardized Workflow for Mass-Spectrometry-Based
Single-Cell Proteomics Data Processing and Analysis Using the Scp
Package.” In Methods in Molecular Biology, 177–220. Methods in
Molecular Biology (Clifton, N.J.). New York, NY: Springer US
([pre-print](https://arxiv.org/abs/2310.13598)).


## scpGUI and QFeaturesGUI: Graphical Interfaces for Single-Cell and Bulk Proteomics

Author(s): Léopold Guyot, Christophe Vanderaa, Laurent Gatto

In recent years, significant advancements have been made in the field
of proteomics data analysis. However, the complexity of workflows
involving programming languages such as R and Python can pose
challenges for practitioners without any coding backgrounds. To
address this issue, we introduce two user-friendly packages: *scpGUI*
and *QFeaturesGUI*.

*scpGUI* is tailored for downstream visual analysis in single-cell
proteomics, using the outcomes of the popular package *scp*. Developed
using *Shiny* and built upon the elegant and efficient *iSEE* suite,
*scpGUI* offers interactive data visualisations specifically crafted
for single-cell proteomics downstream analysis. The app's
interactivity helps users in comprehending their results through
various visualisations.

Similarly, *QFeaturesGUI* is designed for single-cell and bulk
proteomics analysis, capitalising on the strengths of the *QFeatures*
package. Providing a suite of *Shiny* apps, *QFeaturesGUI* offers
comprehensive tools for data import and basic processing steps,
simplifying pre-treatment of quantitative proteomics data. Its modular
design ensures flexibility and adaptability to specific
requirements. These apps also enhance transparency and facilitate
replication by generating reproducible R code.

Together, *scpGUI* and *QFeaturesGUI* offer valuable support for
proteomics data analysis. By combining user-friendly graphical
interfaces with powerful back-end tools, they make advanced analysis
techniques more accessible to the wider proteomics community.

## Batch effect detection and visual quality control with *CytoMDS*, a Bioconductor package for low dimensional representation of distances between cytometry samples

Author(s): Philippe Hauchamps,Dan Lin,Laurent Gatto

Quality Control (QC) of samples is an essential preliminary step in
cytometry data analysis. Notably, identification of potential batch
effects and sample outliers is paramount, to avoid mistaking these
effects for true biological signal in downstream analyses. However,
this task can prove to be delicate and tedious, especially for
datasets with many samples.

Here, we present *CytoMDS*, a Bioconductor package implementing a
dedicated method for low dimensional representation of cytometry
samples composed of marker expressions for up to millions of single
cells. This method combines Earth Mover’s Distance (EMD) [1] for
assessing dissimilarities between multidimensional distributions, and
Multi Dimensional Scaling (MDS) [2] for low dimensional projection of
distances. Some additional visual tools, both for projection quality
diagnosis and for user interpretation of the projection axes, are also
provided in the package.

We demonstrate the strengths and advantages of CytoMDS for QC of
cytometry data on real biological datasets, revealing the presence of
low quality samples, batch effects and biological signal between
sample groups.

#### References

[1] Haidong Yi and Natalie Stanley. 2022. “CytoEMD: Detecting and
Visualizing between-Sample Variation in Relation to Phenotype with
Earth Mover’s Distance.” In Proceedings of the 13th ACM International
Conference on Bioinformatics, Computational Biology and Health
Informatics, 1–14. BCB ’22 28. New York, NY, USA: Association for
Computing Machinery.

[2] Jan de Leeuw and Patrick Mair. 2009. “Multidimensional Scaling
Using Majorization: SMACOF in R.” Journal of Statistical Software 31
(3): 1–30.

#### Publication

Hauchamps, Philippe, Simon Delandre, Stéphane T. Temmerman, Dan Lin,
and Laurent Gatto. 2025. “Visual Quality Control with CytoMDS, a
Bioconductor Package for Low Dimensional Representation of Cytometry
Sample Distances.” Cytometry. Part A: The Journal of the International
Society for Analytical Cytology,
March. https://doi.org/10.1002/cyto.a.24921
([pre-print](https://www.biorxiv.org/content/10.1101/2024.07.01.601465v2)).