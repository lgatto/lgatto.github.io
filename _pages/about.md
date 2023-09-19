---
permalink: /about/
title: "About the author"
modified: 2022-11-05
comments: false
author_profile: true
header:
   overlay_image: /images/slide-code2.png
   overlay_filter: 0.3
---

{% include toc %}

## Short bio

Since September 2018, I am an Associate Professor of Bioinformatics at
the [UCLouvain](https://uclouvain.be/en/index.html), in Belgium, and
director of the Computational Biology and Bioinformatics (CBIO)
group. I am located in the [de Duve
Institute](http://www.deduveinstitute.be/), on the medical campus in
Brussels, where I run a research group and teach at the faculty of
pharmacy and biomedical sciences (FASB).

I am an avid open research advocate and make every possible effort to
make my research reproducible and openly available. I am a [Software
Sustainability Institute
fellow](https://www.software.ac.uk/fellowship-programme), a
[Data](http://www.datacarpentry.org/) and [Software
Carpentry](https://software-carpentry.org/team/) instructor, and an
affiliated [member](http://bioconductor.org/about/core-team/) of the
[Bioconductor](http://bioconductor.org) project (see below).

I am also involved in the [Bullied Into Bad
Science](http://bulliedintobadscience.org/) campaign, an initiative by
and for early career researchers who aim for a fairer, more open and
ethical research and publication environment. In 2017-2018, I was also
part of the eLife [Early-career advisory
group](https://elifesciences.org/about/people/early-career) and, since
2017, am a [#ASAPbio](http://asapbio.org/) ambassador.

[Bioconductor](http://bioconductor.org) ([Huber et al.,
2015](http://www.ncbi.nlm.nih.gov/pubmed/25633503)) is a project that
has had a great impact on many aspects of research and development in
bioinformatics, computational statistics, bio-medical sciences and
many other fields. It also had a big impact on my vision of rigorous
research software development as the foundation of reliable, open and
reproducible research. Since my very first software contribution (the
[yaqcaffy](https://bioconductor.org/packages/2.2/bioc/html/yaqcaffy.html)
package, accepted in Bioconductor 2.2, since then deprecated), I have
become involved in multiple capacity in the project. I have
contributed many packages (mostly focused on mass spectrometry and
proteomics), I am a member of the [technical advisory
board](https://bioconductor.org/about/technical-advisory-board/),
deputy-chair of the [European Bioconductor
Society](https://bioconductor.org/about/european-bioconductor-society/),
I co-lead the [Teaching and education
committee](https://bioconductor.org/help/education-training/), I'm a
member of the [Code of
conduct](https://bioconductor.org/about/code-of-conduct/) committee
since it was set up, I contribute to various [working
groups](http://workinggroups.bioconductor.org/), and am an occasional
[package
reviewer](https://bioconductor.org/about/package-reviewers/). In am
one of the winners of the 2021 [Bioconductor Community
Awards](https://bioconductor.org/about/awards/), one of my proudest
professional achievements. In addition to delivering great science and
software, Bioconductor is a [welcoming and supportive
community](https://bioconductor.org/about/community-advisory-board/).

Before my current position at the UCLouvain, I was a Senior Research
Associate in the Department of Biochemistry at the University of
Cambridge. It's at the [Cambridge Centre for
Proteomics](http://proteomics.bio.cam.ac.uk/) and the Computational
Proteomics Unit (my former research group in Cambridge) that I started
working on various aspects of quantitative and spatial proteomics,
developing new methods and implementing computational tools with a
strong emphasis on rigorous and reproducible data analysis. During my
time in Cambridge, I have also a been a visiting scientist in the
[PRIDE](http://www.ebi.ac.uk/pride/) team at the [European
Bioinformatics Institute](http://www.ebi.ac.uk/pride/) and in the
[Department of Applied Mathematics and Theoretical Physics
(DAMTP)](http://www.damtp.cam.ac.uk/).

And even before that, during my MSc and [PhD
work](http://difusion.ulb.ac.be/vufind/Record/ULB-DIPOT:oai:dipot.ulb.ac.be:2013/210855/Holdings),
I studied micro-evolutionary genetic patterns of the Broom leaf beetle
[*Gonioctena*](http://www.biol.uni.wroc.pl/cassidae/European%20Chrysomelidae/gonioctena%20variabilis.htm)
[*variabilis*](http://davesgarden.com/guides/bf/go/6185/) in Southern
Europe ([Gatto el al.,
2008](http://onlinelibrary.wiley.com/doi/10.1111/j.1095-8312.2008.00972.x/abstract)),
the application of short interspersed mobile elements (SINEs) to study
the evolution of cetaceans, and the applicability of the General Time
Reversible nucleotide substitution model in the light of differential
lineage sorting ([Gatto el al.,
2006](http://www.ncbi.nlm.nih.gov/pubmed/19455208)). I also spend 3
years in industry working on genomic and transcriptomics data, in
particular the microarray quality control ([Shi et al.,
2010](http://www.ncbi.nlm.nih.gov/pubmed/20676074)).


## Research

As pointed out by D. Donoho, *An article about computational science
in a scientific publication is not the scholarship itself, it is
merely advertising of the scholarship. The actual scholarship is the
complete software development environment and the complete set of
instructions which generated the figures*. This directly applies to
high throughput biology data analysis and I strongly believe that
being able to reproduce the complete set of results, replicate an
analysis with new data and track the evolution of the work that lead
to the scientific novelty are essential aspects of the process of doing
research. Hence, I regard the development of **scientific software**
as well as agile and robust analysis methodologies that facilitate
reproducible research, an important aspect of my scientific activity.

Clarity and traceability of the data and the analysis methodology
enable us to better understand what we do, how and why we do it and
consequently exploit the data and comprehend the biology. While not
sufficient, these are nevertheless necessary requirements for
effective **data-driven science**.

The **collaborative** and **interdisciplinarity** nature of much of
the research in biology calls for a open approaches, influenced by the
**open source** and **free/libre** software movements, from communication
between stake holders, **open research** and development to open
dissemination of all research outputs.

### Mass spectrometry and proteomics

My work on the design and implementation of reproducible mass
spectrometry-based proteomics data analysis pipeline has materialised
in the development of the
[`MSnbase`](http://bioconductor.org/packages/MSnbase) ([Gatto et al.
2012](http://www.ncbi.nlm.nih.gov/pubmed/22113085) and
[2021](https://pubs.acs.org/doi/10.1021/acs.jproteome.0c00313))
package to manipulate, process and analyse quantitative proteomics
data. The `MSnbase` infrastructure also supports the work on the
statistical learning applied to spatial proteomics (see below). After
a [decade of `MSnbase`
development](https://lgatto.github.io/msnbase-contribs-2/), Johannes
Rainer, Sebastien Gibb and I have started the [R for Mass Spectrometry
initiative](https://www.rformassspectrometry.org/). Base on our
decade-long experiences, we have set ourselves the aim of designing
and implementing efficient, thoroughly documented, tested and flexible
R software for the analysis and interpretation of high throughput mass
spectrometry assays, including proteomics and metabolomics
experiments.

### Single-cell proteomics

In a Nature Methods Technology Feature in August 2019, Vivien Marx
[dreamt of single-cell
proteomics](https://doi.org/10.1038/s41592-019-0540-6). In 2021,
thanks to some pioneers' groundbreaking efforts, we can confidently
claim that single-cell proteomics is here. The CBIO lab has
contributed the [`scp`](https://bioconductor.org/packages/scp) package
([Vanderaa and Gatto,
2021](https://www.tandfonline.com/doi/abs/10.1080/14789450.2021.1988571?journalCode=ieru20),
or get to pre-print
[here](https://www.biorxiv.org/content/10.1101/2021.04.12.439408v2) if
you don't have access) to these efforts. `scp` relies of [R for Mass
Spectrometry](https://www.rformassspectrometry.org/)'s
[`QFeatures`](https://bioconductor.org/packages/QFeatures) package and
dedicated functions to enable extensive single-cell proteomics data
processing, analysis and interpretation.

### Spatial proteomics

In biology, localisation is function: knowledge of the localisation of
proteins is of paramount importance to assess and study their
function, and spatial proteomics is the systematic study of the
sub-cellular localisation of proteins and changes thereof ([Gatto et
al. 2010](http://www.ncbi.nlm.nih.gov/pubmed/21080489) and
[2014](http://www.mcponline.org/content/13/8/1937.long)). Since 2010,
my team has developed novel software and machine learning approaches
enabling more reliable and systematic inference of protein
localisations using quantitative proteomics. This work has
materialised in the
[`pRoloc`](http://bioconductor.org/packages/pRoloc) package ([Gatto et
al. 2014](http://www.ncbi.nlm.nih.gov/pubmed/24413670)) that
implements various established classification algorithms, effective
visualisation techniques ([Gatto el al.
2015](http://www.ncbi.nlm.nih.gov/pubmed/25690415)) as well as novelty
detection ([Breckels et al.
2013](http://www.ncbi.nlm.nih.gov/pubmed/23523639), [Crook et al.
2020](https://doi.org/10.1371/journal.pcbi.1008288)) and transfer
learning ([Breckels et al.
2016](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1004920)),
harvesting GO annotations of microscopy-based methods to improve the
spatial resolution of experimental spatial proteomics data. More
recently, we proposed a Bayesian framework to quantify uncertainty and
probabilisatically address multi-localsiation of proteins ([Crook et
al. 2018](https://doi.org/10.1371/journal.pcbi.1006516)) and study
comparative spatial proteomics to infer protein re-localisation
([Crook et al. 2022](https://doi.org/10.1038/s41467-022-33570-9)).


## Teaching

My current course at the UCLouvain are

- [Introduction to bioinformatics](http://bit.ly/WSBIM1207) (since 2018)
- [Eléments de statistiques médicales](https://uclouvain.be/cours-2018-wmds1114.html) (since 2018)
- [Bioinformatics](http://bit.ly/WSBIM1322) (since 2019)
- [Omics data analysis](http://bit.ly/WSBIM2122) (since 2019)

Over the years I have been involved in many teaching activities,
ranging from beginners and advanced R courses,
[genome biology](http://www.huber.embl.de/csama/),
[proteomics bioinformatics](http://www.wellcome.ac.uk/Education-resources/Courses-and-conferences/Advanced-Courses-and-Scientific-Conferences/Workshops/WTX054153.htm),
[integrative omics](http://www.ebi.ac.uk/training/course/introduction-integrative-omics),
scientific computing as part of the
[MPhil in Computational Biology](http://www.ccbi.cam.ac.uk/Education/MPhil/)
in Cambridge, as well as several Software and Data Carpentry
bootcamps. All my teaching material is available in the
[**TeachingMaterial**](http://lgatto.github.io/TeachingMaterial/)
repository.

Please do get in touch if you are interested in running workshops.

## Publications

> See also my [Google scholar
> profile](https://scholar.google.co.uk/citations?user=k5DrB74AAAAJ&hl=en)
> and publications in
> [PubMed](https://www.ncbi.nlm.nih.gov/pubmed/?term=gatto+laurent).

### Research articles

Kelly Eckenrode, Dario Righelli, Marcel Ramos, Ricard Argelaguet,
Christophe Vanderaa, Ludwig Geistlinger, Aedin Culhane, Laurent Gatto,
Vincent J. Carey, Martin Morgan, Davide Risso, Levi D Waldron *Curated
single cell multimodal landmark datasets for R/Bioconductor* PLOS
Computational Biology 19(8):
e1011324. doi:[10.1371/journal.pcbi.1011324](https://doi.org/10.1371/journal.pcbi.1011324)
(preprint
bioRxiv:[10.1101/2021.10.27.466079](https://doi.org/10.1101/2021.10.27.466079)).

Gannoun L, De Schrevel C, Belle M, Dauguet N, Achouri Y, Loriot A,
Vanderaa C, Cordi S, Dili A, Heremans Y, Rooman I, Leclercq IA,
Jacquemin P, Gatto L, Lemaigre FP. *Axon guidance genes control
hepatic artery development* Development. 2023 Aug
15;150(16):dev201642. doi:[10.1242/dev.201642](https://doi.org/10.1242/dev.201642). Epub
2023 Aug 17.

Vanderaa C and Gatto L. *Revisiting the Thorny Issue of Missing Values
in Single-Cell Proteomics* J. Proteome Res. (2023)
[doi:10.1021/acs.jproteome.3c00227](https://pubs.acs.org/doi/10.1021/acs.jproteome.3c00227)
(preprint [arXiv:2304.06654v2](https://arxiv.org/abs/2304.06654)).

Halbout M, Bury M, Nanet A, Gerin I, Graff J, Killian T, Gatto L,
Vertommen D, Bommer G. *SUZ domain-containing proteins have multiple
effects on nonsense-mediated decay target transcripts* (2023) Journal
of Biological Chemistry, July 2023;
[doi:10.1016/j.jbc.2023.105095](https://doi.org/10.1016/j.jbc.2023.105095).

Degraeve AL, Haufroid V, Loriot A, et al. *Gut microbiome modulates
tacrolimus pharmacokinetics through the transcriptional regulation of
ABCB1*. Microbiome 11, 138 (2023)
[doi:10.1186/s40168-023-01578-y](https://doi.org/10.1186/s40168-023-01578-y).

Jannone G, Bonaccorsi Riani E, de Magnée C, Tambucci R, Evraerts J,
Ravau J, Baldin P, et al. (2023). *Senescence and Senotherapies in
Biliary Atresia and Biliary Cirrhosis* Aging 15 (11): 4576–99
[10.18632/aging.204700](https://doi.org/10.18632/aging.204700).

Zhu J, Naulaerts S, Boudhan L, Martin M, Gatto L, and Van den Eynde
BJ. *Tumour Immune Rejection Triggered by Activation of
alpha2-Adrenergic Receptors* (2023) Nature, June, 1-9;
[doi:10.1038/s41586-023-06110-8](https://doi.org/10.1038/s41586-023-06110-8).

Colson A, Depoix CL, Lambert I, Leducq C, Bedin M, De Beukelaer M,
Gatto L, Loriot A, Peers de Nieuwburgh M, Bouhna K, Baldin P, Hubinont
C, Sonveaux P, Debiève F *Specific HIF-2α (Hypoxia-Inducible Factor-2)
Inhibitor PT2385 Mitigates Placental Dysfunction In Vitro and in a Rat
Model of Preeclampsia (RUPP)* (2023) Hypertension, 80:1011–1023
[doi:10.1161/HYPERTENSIONAHA.122.20739](https://doi.org/10.1161/hypertensionaha.122.20739).

Gatto L, Aebersold R, Cox J *et al.*, *Initial recommendations for
performing, benchmarking, and reporting single-cell proteomics
experiments* (2023) Nat Methods 20, 375–386
[doi:10.1038/s41592-023-01785-3](https://doi.org/10.1038/s41592-023-01785-3)
(preprint: [arXiv:2207.10815](https://arxiv.org/abs/2207.10815)).

Vanderaa C and Gatto L *The current state of single-cell proteomics
data analysis* (2023), Current Protocols 3 (1):e658,
[10.1002/cpz1.658](https://doi.org/10.1002/cpz1.658) (preprint:
[arXiv:2210.01020](https://arxiv.org/abs/2210.01020)).

Crook OM, Davies CTR, Breckels LM, Christopher JA, Gatto L, Kirk PDW,
Lilley KS *Inferring differential subcellular localisation in
comparative spatial proteomics using BANDLE*, Nature Communications
13, 5948 (2022)
[doi:10.1038/s41467-022-33570-9](https://doi.org/10.1038/s41467-022-33570-9)
(Pre-print: [biorXiv](https://doi.org/10.1101/2021.01.04.425239)).

Lizcano-Perret B., Lardinois C., Wavreil F., Hauchamps P., Herinckx
G., Sorgeloos F., Vertommen D., Gatto L., Michiels T. *Cardiovirus
leader proteins retarget RSK kinases toward alternative substrates to
perturb nucleocytoplasmic traffic*. (2022) PLoS Pathogens
18(2):e1011042. [doi:10.1371/journal.ppat.1011042](https://doi.org/10.1371/journal.ppat.1011042).

Pollé O.G, Delfosse A., Martin M., Louis J., Gies I., den Brinker M.,
Seret N., Lebrethon M., Mouraux T., Gatto L., Lysy P.A. on behalf of
the DIATAG Working Group *Glycemic Variability Patterns Strongly
Correlate with Partial Remission Status in Children with Newly
Diagnosed Type 1 Diabetes*. Diabetes Care 45(10):2360–2368
(2022), doi:[10.2337/dc21-2543](https://doi.org/10.2337/dc21-2543).

Moulis M., Runser S.V.M., Glorieux L. *et al.* *Identification and
implication of tissue-enriched ligands in epithelial–endothelial
crosstalk during pancreas development*. Sci Rep 12, 12498 (2022),
doi:[10.1038/s41598-022-16072-y](https://doi.org/10.1038/s41598-022-16072-y).

Ward B, Yombi JC, Balligand J-L, Cani PD, Collet J-F, *et al.*
*HYGIEIA: HYpothesizing the Genesis of Infectious Diseases and
Epidemics through an Integrated Systems Biology
Approach*. Viruses. 2022; 14(7):1373,
doi:[10.3390/v14071373](https://doi.org/10.3390/v14071373).


Dewulf JP, Martin M, Marie S, Oguz F, Belkhir L, De Greef J, *et
al*. *Urine metabolomics links dysregulation of the
tryptophan-kynurenine pathway to inflammation and severity of
COVID-19*. Sci Rep. 12: 1–8 (2022),
doi:[10.1038/s41598-022-14292-w](https://doi.org/10.1038/s41598-022-14292-w).


De Berdt P, Vanvarenberg K, Ucakar B, Bouzin C, Paquot A, Gratpain V,
Loriot A, Payen V, Bearzatto B, Muccioli GG, Gatto L, Diogenes A, des
Rieux A *The human dental apical papilla promotes spinal cord repair
through a paracrine mechanism* Cell. Mol. Life Sci. 79, 252
(2022), doi:[10.1007/s00018-022-04210-8](https://doi.org/10.1007/s00018-022-04210-8).

Dontaine J, Bouali A, Daussin F *et al.* *The intra-mitochondrial
O-GlcNAcylation system rapidly modulates OXPHOS function and ROS
release in the heart*. Commun Biol 5, 349
(2022), doi:[10.1038/s42003-022-03282-3](https://doi.org/10.1038/s42003-022-03282-3).

Delcorte O, Spourquet C, Lemoine P, Degosserie J, Van Der Smissen P,
Dauguet N, Loriot A, Knauf JA, Gatto L, Marbaix E, Fagin JA, Pierreux
CE. *BRAFV600E Induction in Thyrocytes Triggers Important Changes in
the miRNAs Content and the Populations of Extracellular Vesicles
Released in Thyroid Tumor Microenvironment*. Biomedicines. 2022;
10(4):755,
doi:[10.3390/biomedicines10040755](https://www.mdpi.com/2227-9059/10/4/755).

Rainer J, Vicini A, Salzer L, Stanstrup J, Badia JM, Neumann S, Stravs
MA, Verri Hernandes V, Gatto L, Gibb S, Witting M. A Modular and
Expandable Ecosystem for Metabolomics Data Annotation in
R. Metabolites. 2022;
12(2):173, doi:[10.3390/metabo12020173](https://doi.org/10.3390/metabo12020173).

Aayush Grover and Laurent Gatto *ProtFinder: finding subcellular
locations of proteins using protein interaction networks* bioRxiv
2022.01.11.475836,
doi:[10.1101/2022.01.11.475836](https://doi.org/10.1101/2022.01.11.475836)
([software repo](https://github.com/UCLouvain-CBIO/ProtFinder)).

Dechamps M, De Poortere, Martin M, Gatto L, et
al. *Inflammation-Induced Coagulopathy Substantially Differs Between
COVID-19 and Septic Shock: A Prospective Observational Study*
Frontiers in Medicine (2022),
doi:[10.3389/fmed.2021.780750](https://www.frontiersin.org/article/10.3389/fmed.2021.780750).

Christophe Vanderaa, Laurent Gatto *Replication of single-cell
proteomics data reveals important computational challenges* Expert
Review of Proteomics (2021),
doi:[10.1080/14789450.2021.1988571](https://www.tandfonline.com/doi/full/10.1080/14789450.2021.1988571)
(pre-print:
[10.1101/2021.04.12.439408v2](https://www.biorxiv.org/content/10.1101/2021.04.12.439408v2)).

Mulvey CM, Breckels LM, Crook O, Sanders D, Ribeiro A, Geladaki A,
Christoforou A, Britovsek NK, Hurrell T, Deery MJ, Gatto L, Smith A,
and Lilley KS. *Spatiotemporal proteomic profiling of the
pro-inflammatory response to lipopolysaccharide in the THP-1 human
leukaemia cell line* Nat Commun 12, 5773 (2021),
doi:[10.1038/s41467-021-26000-9](https://doi.org/10.1038/s41467-021-26000-9).

Killian T and Gatto L. Exploiting the DepMap cancer dependency data
using the `depmap` R package [version 1; peer review: 1 approved with
reservations]. F1000Research 2021, 10:416,
doi:[10.12688/f1000research.52811.1](https://doi.org/10.12688/f1000research.52811.1).

Jérôme Ambroise, Laurent Gatto, Julie Hurel, Bertrand Bearzatto,
Jean-Luc Gala *On the many advantages of using the VariantExperiment
class to store, exchange and analyze SARS-CoV-2 genomic data and
associated metadata* bioRxiv 2021.04.05.438328, doi:
[https://doi.org/10.1101/2021.04.05.438328](https://doi.org/10.1101/2021.04.05.438328).

Crook OM, Geladaki A, Nightingale DJH, Vennard O, Lilley KS, Gatto L,
Kirk PDW *A semi-supervised Bayesian approach for simultaneous protein
sub-cellular localisation assignment and novelty detection* PLOS
Computational Biology 2020 16(11):e1008288,
doi:[10.1371/journal.pcbi.1008288](https://doi.org/10.1371/journal.pcbi.1008288)
([preprint](https://doi.org/10.1101/2020.05.05.078345)).

Pollet H *et al.*, Aberrant Membrane Composition and Biophysical
Properties Impair Erythrocyte Morphology and Functionality in
Elliptocytosis, Biomolecules 2020, 10(8), 1120,
doi:[10.3390/biom10081120](https://www.mdpi.com/2218-273X/10/8/1120).

Gatto L, Gibb S, Rainer J *MSnbase, efficient and elegant R-based
processing and visualisation of raw mass spectrometry data*
J. Proteome Res. 2021, 20, 1, 1063–1069,
doi:[10.1021/acs.jproteome.0c00313](https://doi.org/10.1021/acs.jproteome.0c00313)
([preprint](https://doi.org/10.1101/2020.04.29.067868)).

Silverman EK *et al.*, *Molecular networks in Network Medicine:
Development and applications*, WIREs Systems Biology and Medecine,
2020, doi:[10.1002/wsbm.1489](https://dx.doi.org/10.1002/wsbm.1489).

Crook PM, Gatto L, Kirk PDW *Fast approximate inference for variable
selection in Dirichlet process mixtures, with an application to
pan-cancer proteomics* Statistical Applications in Genetics and
Molecular Biology, Volume 18, Issue 6, 1544-6115,
doi:[10.1515/sagmb-2018-0065](https://doi.org/10.1515/sagmb-2018-0065)
2019 (pre-print:
[arXiv:1810.05450](https://arxiv.org/abs/1810.05450)).

Baers LL, Breckels LM, Mills LA, Gatto L, Deery M, Stevens TJ, Howe
CH, Lilley KS, Lea-Smith DJ *Proteome mapping of a cyanobacterium
reveals distinct compartment organisation and cell-dispersed
metabolism*, Plant Physiology 2019,
doi:[10.1104/pp.19.00897](https://doi.org/10.1104/pp.19.00897).

Petyuk VA, Gatto L and Payne SH *Reproducibility and Transparency by
Design*, Molecular & Cellular Proteomics July 4, 2019,
mcp.IP119.001567,
doi:[10.1074/mcp.IP119.001567](https://doi.org/10.1074/mcp.IP119.001567).

Crook OM, Breckels LM, Lilley KS, Kirk PDW and Gatto L (2019) *A
Bioconductor workflow for the Bayesian analysis of spatial proteomics*
[version 1; peer review: 1 approved, 2 approved with reservations]
F1000Research 2019, 8:446,
doi:[10.12688/f1000research.18636.1](https://doi.org/10.12688/f1000research.18636.1).

Crook OM, Lilley KS, Gatto L, Kirk PDW (2019). *Semi-Supervised
Non-Parametric Bayesian Modelling of Spatial Proteomics.* arXiv
[stat.AP]. [http://arxiv.org/abs/1903.02909](http://arxiv.org/abs/1903.02909).

Johannes Rainer, Laurent Gatto, Christian X. Weichenberger;
*`ensembldb`: an R package to create and use Ensembl-based annotation
resources*, Bioinformatics, btz031,
doi:[10.1093/bioinformatics/btz031](https://doi.org/10.1093/bioinformatics/btz031).

Laurent Gatto, Lisa M Breckels, Kathryn S Lilley *Assessing
sub-cellular resolution in spatial proteomics experiments* Current
Opinion in Chemical Biology, 48 123-149
(2019), doi:[10.1016/j.cbpa.2018.11.015](https://doi.org/10.1016/j.cbpa.2018.11.015).

Crook OM, Mulvey CM, Kirk PDW, Lilley KS, Gatto L (2018) *A Bayesian
mixture modelling approach for spatial proteomics*. PLoS Comput Biol
14(11):
e1006516. [https://doi.org/10.1371/journal.pcbi.1006516](https://doi.org/10.1371/journal.pcbi.1006516).

Eglen, S., Mounce, R., Gatto, L., Currie, A., & Nobis, Y. *Recent
developments in scholarly publishing: a view from the life
sciences*. Emerging Topics in Life Sciences, Dec 21, 2018, 2 (6)
775-778,
doi:[10.1042/ETLS20180172](http://www.emergtoplifesci.org/content/2/6/775)
(pre-print
[doi:10.31219/osf.io/57hcs](https://doi.org/10.31219/osf.io/57hcs)).

Aikaterini Geladaki, Nina Kocevar Britovsek, Lisa M. Breckels, Tom
S. Smith, Claire M. Mulvey, Oliver M. Crook, Laurent Gatto, Kathryn
S. Lilley [*Combining LOPIT with differential ultracentrifugation for
high-resolution spatial
proteomics*](https://www.nature.com/articles/s41467-018-08191-w)
Nature Communications volume 10, Article number:331 (2019) (pre-print
[10.1101/378364](https://doi.org/10.1101/378364)).

Segeritz CP, Rashid ST, Cardoso de Brito M, Paola MS, Ordonez A,
Morell CM, Kaserman JE, Madrigal P, Hannan N, Gatto L, Tan L, Wilson
AA, Lilley K, Marciniak SJ, Gooptu B, Lomas DA, Vallier L. *hiPSC
hepatocyte model demonstrates the role of unfolded protein response
and inflammatory networks in α(1)-antitrypsin deficiency.* J
Hepatol. 2018 Jun 4. pii:
S0168-8278(18)32113-5. doi:[10.1016/j.jhep.2018.05.028](https://dx.doi.org/10.1016/j.jhep.2018.05.028).

Nett I, Mulas C, Gatto L, Lilley KS, Smith A. *Negative feedback via
RSK modulates Erk‐dependent progression from naïve pluripotency* EMBO
reports (2018) e45642,
doi:[10.15252/embr.201745642](http://dx.doi.org/10.15252/embr.201745642).

Thul PJ, *et al.* *A subcellular map of the human
proteome*. Science. 2017 May 11. pii: eaal3321,
doi:[10.1126/science.aal3321](http://science.sciencemag.org/content/early/2017/05/10/science.aal3321).
PubMed [PMID:28495876](https://www.ncbi.nlm.nih.gov/pubmed/28495876).

Mulvey CM, Breckels LM, Geladaki A, Kocevar Britovsek N, Nightingale
DJH, Christoforou A , Elzek M, Deery MJ, Gatto L, Lilley KS. *Using
HyperLOPIT to perform high-resolution mapping of the spatial
proteome*. Nature Protocols, 12, 1110–1135 (2017)
[doi:10.1038/nprot.2017.026](https://www.nature.com/nprot/journal/v12/n6/full/nprot.2017.026.html)
(See the
[F1000Research workflow](https://f1000research.com/articles/5-2926/)
for details on the computational side of the protocol.)

Leprevost FD, et al. *[BioContainers](http://biocontainers.pro/): An
open-source and community-driven framework for software
standardization.* Bioinformatics. 2017 Mar 30,
doi:[10.1093/bioinformatics/btx192](https://academic.oup.com/bioinformatics/article/doi/10.1093/bioinformatics/btx192/3096437/BioContainers-An-open-source-and-community-driven). [Epub
ahead of print] [PubMed
PMID:28379341](https://www.ncbi.nlm.nih.gov/pubmed/28379341).

Breckels LM, Mulvey CM, Lilley KS and Gatto L. *A Bioconductor
workflow for processing and analysing spatial proteomics data*
F1000Research 2016, 5:2926
(doi:[10.12688/f1000research.10411.1](https://f1000research.com/articles/5-2926/)).
[Software: [MSnbase](http://bioconductor.org/packages/MSnbase),
[pRoloc](http://bioconductor.org/packages/pRoloc),
[pRolocGUI](http://bioconductor.org/packages/pRolocGUI)]

Wieczorek S, Combes F, Lazar C, Giai Gianetto Q, Gatto L, Dorffer A,
Hesse A, Coute Y, Ferro M, Bruley C, and Burger T. *DAPAR & ProStaR:
software to perform statistical analyses in quantitative discovery
proteomics* Bioinformatics 2016,
doi:[10.1093/bioinformatics/btw580](http://bioinformatics.oxfordjournals.org/content/33/1/135).

Perez-Riverol Y, Gatto L, Wang R, Sachsenberg T, Uszkoreit J,
Leprevost Fda V, Fufezan C, Ternent T, Eglen SJ, Katz DS, Pollard TJ,
Konovalov A, Flight RM, Blin K, Vizcaino JA. *Ten Simple Rules for
Taking Advantage of Git and GitHub*. PLoS Comput Biol. 2016 Jul
14;12(7):e1004947,
doi:[10.1371/journal.pcbi.1004947](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1004947)
[PMID:27415786](http://www.ncbi.nlm.nih.gov/pubmed/27415786).

Breckels LM, Holden S, Wonjar D, Mulvey CM, Christoforou A, Groen AJ,
Kohlbacher O, Lilley KS, Gatto L. *Learning from heterogeneous data
sources: an application in spatial proteomics*. PLoS Comput Biol. 2016
May 13;12(5):e1004920,
doi:[10.1371/journal.pcbi.1004920](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1004920),
[Software](http://bioconductor.org/packages/release/bioc/html/pRoloc.html))

Fabre B, Korona D, Groen A, Vowinckel J, Gatto L, Deery MJ, Ralser M,
Russell S, Lilley KS. *Analysis of the Drosophila melanogaster
proteome dynamics during the embryo early development by a combination
of label-free proteomics approaches*,
Proteomics, 2016 ([PMID:27029218](http://www.ncbi.nlm.nih.gov/pubmed/27029218),
[Publisher](http://dx.doi.org/10.1002/pmic.201500482))

Lazar C, Gatto L, Ferro M, Bruley C, Burger T. *Accounting for the
Multiple Natures of Missing Values in Label-Free Quantitative
Proteomics Data Sets to Compare Imputation Strategies*. J Proteome
Res. 2016 Apr
1;15(4):1116-25. ([Publisher](http://pubsdc3.acs.org/doi/abs/10.1021/acs.jproteome.5b00981),
[PMID:26906401](http://www.ncbi.nlm.nih.gov/pubmed/26906401),
Software:
[CRAN](https://cran.r-project.org/web/packages/imputeLCMD/index.html)
and
[Bioconductor](http://bioconductor.org/packages/release/bioc/html/MSnbase.html))

Christoforou A, Mulvey CM, Breckels LM, Geladaki A, Hurrell T, Hayward
PC, Naake T, Gatto L, Viner R, Arias AM, Lilley KS. A draft map of the
mouse pluripotent stem cell spatial proteome. Nat Commun. 2016 Jan
12;7:9992,
doi:[10.1038/ncomms9992](http://www.nature.com/ncomms/2016/160112/ncomms9992/abs/ncomms9992.html)
([PMID:26754106](http://www.ncbi.nlm.nih.gov/pubmed/26754106),
[data](http://www.bioconductor.org/packages/release/data/experiment/html/pRolocdata.html),
[PRIDE](http://www.ebi.ac.uk/pride/archive/projects/PXD001279),
[resource](https://lgatto.shinyapps.io/christoforou2015/)).

Gatto L, Hansen KD, Hoopmann MR, Hermjakob H, Kohlbacher O and Beyer,
A *Testing and validation of computational methods for mass
spectrometry*. J Proteome Res. 2015,
doi:[10.1002/stem.2067](http://pubs.acs.org/doi/abs/10.1021/acs.jproteome.5b00852)
([PubMed](http://www.ncbi.nlm.nih.gov/pubmed/26549429)).

Mulvey CM, Schröter C, Gatto L, Dikicioglu D, Baris Fidaner I,
Christoforou A, Deery MJ, Cho LT, Niakan KK, Martinez-Arias A, Lilley
KS. *Dynamic proteomic profiling of extra-embryonic endoderm
differentiation in mouse embryonic stem cells*. Stem Cells. 2015
Jun 8. doi: 10.1002/stem.2067
([PubMed](http://www.ncbi.nlm.nih.gov/pubmed/26059426)).

Gatto L, Breckels LM, Naake T and Gibb S *Visualisation of proteomics
data using R and Bioconductor*. Proteomics. 2015
Feb 18. doi:10.1002/pmic.201400392
([PubMed](http://www.ncbi.nlm.nih.gov/pubmed/25690415),
[Publisher](http://onlinelibrary.wiley.com/doi/10.1002/pmic.201400392/abstract)
and software:
[Bioconductor](http://bioconductor.org/packages/devel/data/experiment/html/RforProteomics.html),
[github](https://github.com/lgatto/RforProteomics)).

Huber W et al. *Orchestrating high-throughput genomic analysis with
Bioconductor*. Nat Methods. 2015 Jan 29;12(2):115-21
([PubMed](http://www.ncbi.nlm.nih.gov/pubmed/25633503),
[Publisher](http://www.nature.com/doifinder/10.1038/nmeth.3252)).


Hiemstra TF et al. *Human urinary exosomes as innate immune
effectors*, J Am Soc Nephrol. 2014
Sep;25(9):2017-27. ([PubMed](http://www.ncbi.nlm.nih.gov/pubmed/24700864),[Publisher](http://jasn.asnjournals.org/content/25/9/2017)).

Nikolovski N, Shliaha PV, Gatto L, Dupree P and Lilley KS *Label free
protein quantification for plant Golgi protein localisation and
abundance*, Plant Physiol. pp.114.245589; First Published on August
13, 2014; doi:10.1104/pp.114.245589 (<a
href="http://www.plantphysiol.org/content/early/2014/08/13/pp.114.245589.short">Publisher</a>,
<a href="http://www.ncbi.nlm.nih.gov/pubmed/25122472">PubMed</a>)


Griss J, *et al.* *The mzTab Data Exchange Format: communicating
MS-based proteomics and metabolomics experimental results to a wider
audience*, Mol Cell Proteomics. 2014 June 30. (<a
href="http://www.mcponline.org./content/early/2014/06/30/mcp.O113.036681.abstract">Publisher</a>)


Tomizioli M, <i>et al.</i> *Deciphering thylakoid sub-compartments
using a mass spectrometry-based approach*, Mol Cell Proteomics. 2014
May 28. (<a
href="http://mcponline.org/content/early/2014/05/28/mcp.M114.040923.abstract">Publisher</a>,
<a href="http://www.ncbi.nlm.nih.gov/pubmed/24872594">PubMed</a>)


Gatto L, <i>et al.</i> *A foundation for reliable spatial proteomics
data analysis*, Mol Cell Proteomics. 2014 Aug;13(8):1937-52. (<a
href="http://www.mcponline.org/content/13/8/1937.long">Publisher</a>,
<a href="http://www.ncbi.nlm.nih.gov/pubmed/24846987">PubMed</a>, <a
href="http://www.bioconductor.org/packages/devel/bioc/html/pRoloc.html">software</a>,
<a
href="http://www.genomeweb.com/proteomics/cambridge-researchers-outline-best-practices-analysis-organelle-proteomics-data">press
coverage</a>)

Walzer M, <i>et al.</i> *qcML: an exchange format for quality control
metrics from mass spectrometry experiments*, Mol Cell Proteomics. 2014
Apr 23 (<a
href="http://www.ncbi.nlm.nih.gov/pubmed/24760958">PubMed</a>).


Vizcaíno J.A. <i>et al.</i> *ProteomeXchange: globally co-ordinated
proteomics data submission and dissemination*, Nature Biotechnology
2014, 32, 223–226 (<a
href="http://www.ncbi.nlm.nih.gov/pubmed/24727771">PubMed</a>)


Gatto L., Breckels L.M, Burger T, Wieczorek S. and Lilley
K.S. *Mass-spectrometry based spatial proteomics data analysis using
pRoloc and pRolocdata*, Bioinformatics, 2014 (<a
href="http://www.bioconductor.org/packages/release/bioc/html/pRoloc.html">software</a>,
<a href="http://www.ncbi.nlm.nih.gov/pubmed/24413670">PubMed</a>,
<a href="http://bioinformatics.oxfordjournals.org/content/30/9/1322">publisher</a>,
<a href="http://www.bioconductor.org/packages/release/bioc/html/pRoloc.html">software</a>
and <a href="http://www.bioconductor.org/packages/release/data/experiment/html/pRolocdata.html">data</a>).

Groen A., Sancho-Andr&eacute;s G., Breckels LM., Gatto L., Aniento
F. and Lilley K.S. *Identification of Trans Golgi Network proteins in
Arabidopsis thaliana root tissue* Journal of Proteome Research, 2013
(<a href="http://www.ncbi.nlm.nih.gov/pubmed/24344820">PubMed</a>, <a
href="http://pubs.acs.org/doi/abs/10.1021/pr4008464">publisher</a>).

Wilf N.M. <i>et al.</i> *RNA-seq reveals the RNA binding proteins, Hfq
and RsmA, play various roles in virulence, antibiotic production and
genomic flux in Serratia sp. ATCC 39006* <a
href="http://www.biomedcentral.com/1471-2164/14/822/abstract">BMC
Genomics 2013, 14:822</a>.

Gatto L. and Christoforou A. *Using R and Bioconductor for proteomics
data analysis*, Biochim Biophys Acta - Proteins and Proteomics, 2013.
([PubMed](http://www.ncbi.nlm.nih.gov/pubmed/23692960),
[pre-print](http://arxiv.org/abs/1305.6559) and software:
[Bioconductor](http://bioconductor.org/packages/devel/data/experiment/html/RforProteomics.html),
[github](https://github.com/lgatto/RforProteomics)).

Bond N.J., Shliaha P.V, Lilley K.S., and Gatto L. *Improving
qualitative and quantitative performance for MS<sup>E</sup>-based
label free proteomics*, J. Proteome Res., 2013 (<a
href="http://www.ncbi.nlm.nih.gov/pubmed/23510225">PubMed</a>, <a
href="http://pubs.acs.org/doi/abs/10.1021/pr300776t">publisher</a>, <a
href="http://www.bioconductor.org/packages/release/bioc/html/synapter.html">software</a>).


Shliaha P.V, Bond N.J., Gatto L. and Lilley K.S. *The Effects of
Travelling Wave Ion Mobility Separation on Data Independent
Acquisition in Proteomics Studies*, J. Proteome Res., 2013
(<a href="http://www.ncbi.nlm.nih.gov/pubmed/23514362">PubMed</a>,
<a href="http://pubs.acs.org/doi/abs/10.1021/pr300775k">publisher</a>,
<a href="http://www.bioconductor.org/packages/release/bioc/html/synapter.html">software</a>).

Breckels L.M., Gatto L., Christoforou A., Groen A.J., Lilley K.S. and
Trotter M.W.B.  *The Effect of Organelle Discovery upon Sub-Cellular
Protein Localisation*, Journal of Proteomics, 2013 (<a
href="http://www.ncbi.nlm.nih.gov/pubmed/23523639">PubMed</a>,
<a href="http://www.bioconductor.org/packages/release/bioc/html/pRoloc.html">software</a>).

Chambers M. <i>et al.</i> *A Cross-platform Toolkit for Mass
Spectrometry and Proteomics*, <a
href="http://www.nature.com/nbt/index.html">Nature Biotechnology</a>
30, 918–920, 2012 (<a href="http://www.ncbi.nlm.nih.gov/pubmed/23051804">PubMed</a>,
<a href="http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3471674/pdf/nihms-374482.pdf">pdf</a>,
software [<a href="http://proteowizard.sourceforge.net/">1</a>|<a href="http://www.bioconductor.org/packages/release/bioc/html/mzR.html">2</a>]).


Gatto L. and Lilley K.S. *MSnbase - an R/Bioconductor package for
isobaric tagged mass spectrometry data visualisation, processing and
quantitation*, <a
href="http://bioinformatics.oxfordjournals.org/">Bioinformatics</a>,
28(2), 288-289, 2012 (<a href="http://www.ncbi.nlm.nih.gov/pubmed/22113085">PubMed</a>,
<a href="http://bioinformatics.oxfordjournals.org/content/28/2/288.full.pdf">pdf</a>,
<a href="http://www.bioconductor.org/packages/release/bioc/html/MSnbase.html">software</a>).


Capuano F., Bond N.J., Gatto L., Beaudoin F., Napier J., Benvenuto E.,
Lilley K.S, and Baschieri S. *LC-MS/MS methods for absolute
quantification and identification of proteins associated to chimeric
plant oil bodies*, <a
href="http://pubs.acs.org/journal/ancham">Analytical Chemistry</a>,
Dec 15;83(24):9267-72, 2011 (<a
href="http://www.ncbi.nlm.nih.gov/pubmed/22017570">PubMed</a> - <a
href="http://www.ebi.ac.uk/pride/simpleSearch.do?simpleSearchValue=19642">data</a>).

Foster J.M., Degroeve S., Gatto L., Visser, M., Wang, R., Griss J.,
Apweiler R. and Martens L. *A posteriori quality control for the
curation and reuse of public proteomics data*,
[Proteomics](http://www3.interscience.wiley.com/journal/76510741/home)
11(11):2182-94, 2011
([PubMed](http://www.ncbi.nlm.nih.gov/pubmed/21538885),
[pdf](http://onlinelibrary.wiley.com/doi/10.1002/pmic.201000602/pdf)).

Lilley K.S., Deery M.J. and Gatto L. *Challenges for Proteomics Core
Facilities*,
[Proteomics](http://www3.interscience.wiley.com/journal/76510741/home)
11: 1017–1025, 2011
([PubMed](http://www.ncbi.nlm.nih.gov/pubmed/21360676),
[pdf](http://onlinelibrary.wiley.com/doi/10.1002/pmic.201000693/pdf)).

Gatto L., Vizcaíno J.A., Hermjakob H., Huber W. and Lilley
K.S. *Organelle proteomics experimental designs and analysis*
<a href="http://www3.interscience.wiley.com/journal/76510741/home">Proteomics</a>,
10:22, 3957-3969, 2010
(<a href="http://www.ncbi.nlm.nih.gov/pubmed/21080489">PubMed</a>,
<a href="http://onlinelibrary.wiley.com/doi/10.1002/pmic.201000244/pdf">pdf</a>).

<a href="http://www.nature.com/nbt/journal/v28/n8/abs/nbt.1665.html#/group-1">MAQC
Consortium</a> *The MicroArray Quality Control (MAQC)-II study of
common practices for the development and validation of
microarray-based predictive models* <a
href="http://www.nature.com/nbt/index.html">Nature Biotechnology</a>
28, 827–838 2010
(<a href="http://www.ncbi.nlm.nih.gov/pubmed/20676074">PubMed</a>,
<a href="http://www.nature.com/nbt/journal/v28/n8/pdf/nbt.1665.pdf">pdf</a>).


Gatto L., Mardulyn P. and Pasteels J.M. *Morphological and
mitochondrial DNA analysis suggest the presence of a hybrid zone
between two species of the leaf beetle Gonioctena variabilis species
complex in southern Spain*, <a
href="http://www.wiley.com/bw/journal.asp?ref=0024-4066&amp;site=1">Biological
Journal of the Linnean Society</a>, 2008, 94(1), 105-114
(<a href="http://onlinelibrary.wiley.com/doi/10.1111/j.1095-8312.2008.00972.x/abstract">abstract</a>,
<a href="http://onlinelibrary.wiley.com/doi/10.1111/j.1095-8312.2008.00972.x/pdf">pdf</a>).

Danis B., George T.C., Goriely S., Dutta B., Renneson J., Gatto L.,
Fitzgerald-Bocarsly P., Marchant A., Goldman M., Willems F. and De Wit
D. *Interferon regulatory factor 7-mediated responses are defective in
cord blood plasmacytoid dendritic cells.* <a
href="http://onlinelibrary.wiley.com/journal/10.1002/(ISSN)1521-4141">Eur
J Immunol.</a> 2008 Feb;38(2):507-17.
(<a href="http://www.ncbi.nlm.nih.gov/pubmed/18200500">PubMed</a>,
<a href="http://onlinelibrary.wiley.com/doi/10.1002/eji.200737760/pdf">pdf</a>).

Gatto L., Catanzaro D. and Milinkovitch M.C. *Assessing the
Applicability of the GTR Nucleotide Substitution Model Through
Simulations* <a
href="http://www.la-press.com/evolutionary-bioinformatics-journal-j17">Evolutionary
Bioinformatics</a> 2006:2 (<a
href="http://www.ncbi.nlm.nih.gov/pubmed/19455208">PubMed</a>,
<a href="http://www.la-press.com/redirect_file.php?fileId=648&amp;filename=EBO-2-Milinkovitch-et-al-(2)&amp;fileType=pdf">pdf</a>).


### Book chapters

Christoforou A., Mulvey C., Breckels LM., Gatto L. and Lilley
KS. [*Spatial Proteomics: Practical Considerations for Data Acquisition and Analysis in Protein Subcellular Localisation Studies*](http://pubs.rsc.org/en/content/chapter/bk9781849738088-00185/978-1-84973-808-8#!divabstract)
in *Quantitative Proteomics*, 185-210, The Royal Society of Chemistry,
2014.

Breckels LM, Gibb S, Petyuk V and Gatto L
[*R for Proteomics*](http://pubs.rsc.org/en/content/chapter/bk9781782624288-00321/978-1-78262-428-8#!divabstract)
in *Proteome Informatics*, The Royal Society of Chemistry, November
2016.

### Technical Notes

Gatto L. *Data Management Plan for a Biotechnology and Biological
Sciences Research Council (BBSRC) Tools and ResourcesDevelopment Fund
(TRDF) Grant*, Research Ideas and Outcomes (2017),
[doi:10.3897/rio.3.e11624](http://riojournal.com/articles.php?id=11624).


Gatto, L. and Schretter, C. *Designing Primer Pairs and Oligos with
OligoFaktorySE*. [EMBnet.news](http://journal.embnet.org/index.php/embnetnews/article/view/38)
North America, 15, oct. 2009
([pdf](http://journal.embnet.org/index.php/embnetnews/article/download/38/58),[software](http://www.bioinformatics.org/oligofaktory/)).

Schretter, C. and Gatto, L. *A Tiny Queuing System for Blast Servers*
December, 2005
([short](http://proteome.sysbiol.cam.ac.uk/lgatto/files/tiny_queuing_system.pdf)
and slighly
[longer](http://proteome.sysbiol.cam.ac.uk/lgatto/files/OligoFaktory_queuing_system.pdf)
versions).


## Web/press coverage

*News in Proteomics Research* blog posts about [R for
proteomics](https://proteomicsnews.blogspot.co.uk/2013/07/r-for-proteomics.html),
[R and
Bioconductor](https://proteomicsnews.blogspot.co.uk/2015/02/bioconductor-for-proteomics.html),
[spatial
proteomics](https://proteomicsnews.blogspot.co.uk/2016/12/bioconductor-workflow-for-spatial.html
and
https://proteomicsnews.blogspot.co.uk/2017/05/hyperlopit-high-resolution-spatial.html)
and [handling of missing
values](https://proteomicsnews.blogspot.co.uk/2016/02/imputation-strategies-in-label-free.html).

*Genome web* [Statistical Design Remains Sticking Point for Proteomics
Experiments](https://www.genomeweb.com/proteomics-protein-research/statistical-design-remains-sticking-point-proteomics-experiments)
Jul 27, 2017.

[Publishers put the squeeze on
ResearchGate](http://www.researchresearch.com/news/article/?articleId=1370722),
11 Oct 2017.

*Nature News & Comment* Correspondance [Preprints help journalism, not
hinder it](https://www.nature.com/articles/d41586-018-06055-3), , 29
Aug 2018.

## Software

I have developed and have contributed to many open source
R/[Bioconductor](http://www.bioconductor.org) packages, in particular
[proteomics](http://bioconductor.org/packages/release/BiocViews.html#___Proteomics)
software and data packages, all of which are available on my
[own](http://www.github.com/lgatto) and my
[group's](http://www.github.com/ComputationalProteomicsUnit) GitHub
pages. See
[Gatto and Christoforou, 2014](http://www.ncbi.nlm.nih.gov/pubmed/23692960),
[Gatto et al., 2014](http://www.ncbi.nlm.nih.gov/pubmed/25690415) and
the
[`RforProteomics` vignettes](http://www.bioconductor.org/packages/release/data/experiment/html/RforProteomics.html)
for an overview of the R/Bioconductor infrastructure for mass
spectrometry and proteomics.


## Talks

This is an incomplete list of talks I have given in the past.

Principled and Reproducible Mass Spectrometry-based Single Cell
Proteomics Data Analysis, USHUPO, 08 March 2020.

[Standardised and reproducible analysis of mass spectrometry-based
single-cell proteomics data](http://bit.ly/2020SCP), [Single Cell
Proteomics meeting](http://single-cell.net/proteomics/scp2020), 18
August 2020.

[MSnbase, efficient and elegant R-based processing and visualisation
of raw mass spectrometry
data](https://lgatto.github.io/2020_07_15_ISMB/), ISCB ISMB 2020
virtual conference, 15 July 2020.

[MSnbase design principles and code
walk](https://lgatto.github.io/2020_05_07_MayInstitute/), Online May
Institute for Computation and statistics for mass spectrometry and
proteomics, 7 May 2020.

[Probabilistic mapping of the sub-cellular
proteome](http://bit.ly/ABLS2020), VIB Applied Bioinformatics in Life
Sciences (3rd edition), 13-14 February 2020, Leuven Belgium.

Invited talk at the Belgian Biophysical Society Symposium [Protein
folding and
stability](https://www.sciences.uliege.be/cms/c_4944765/en/protein-folding-and-stability),
30 August 2019, Liège.

Invited talk at the *The Alan Turing Institute Workshop on Statistical
Data Science for Proteomics and Metabolomics*, 13th June 2019.

Invited talk at the [International Society for Clinical Biostatistics
BePA mini-symposium](https://kuleuvencongres.be/iscb40) at the
KULeuven, 18 July 2019.

[Becoming a better scientist with open and reproducible
research](https://lgatto.github.io/rr-publ/), *Are you ready for
publishing reproducible research?* meeting, 16 May 2019, TU Delft,
Netherlands.

[Open source and open development proteomics software](http://bit.ly/20180109eubic) at
the
[EuBIC 2018 developer's meeting](http://uahost.uantwerpen.be/eubic18/),
9 - 12 January 2018, Ghent, Belgium.

A longer talk about *the [Bullied Into Bad
Science](http://bulliedintobadscience.org/) campaign* at the
[OpenConCam](http://www.opencon2017.org/lgatt0/opencon_2017_cambridge)
2017 conference on the 16 November 2017. The content and slides are
available
[here](https://lgatto.github.io/BulliedIntoBadScience-OpenConCam/).

Short [I won't be #BulliedIntoBadScience!](http://bit.ly/20171112OpenCon) as
part of the panel discussion *Next-generation initiatives advancing
open*, at [OpenCon](http://www.opencon2017.org/) 11 - 13 November
2017, Berlin.

[Mapping the sub-cellular proteome](http://bit.ly/20171108FLI), 8
November 2017, Leibniz Institut for Aging, Jena, Germany.

[Open Science in Practice](https://osip2017.epfl.ch/), 25 September
2017, Lausanne,
Switzerland. [An early career researcher's view on modern and open scholarship](https://lgatto.github.io/EPFL-open-science/).

[Proteomics Method Forum](https://www.proteomicsmethodsforum.org.uk/),
Oxford, UK, 22-23
June 2017. [The Bioconductor project - analysis and comprehension of high-throughput proteomics data](https://bit.ly/20170623pmf).

[Research Data Management Forum](http://www.dcc.ac.uk/events/research-data-management-forum-rdmf/rdmf17 ),
London, UK, 9th
June 2017. [An early career researcher's view on modern and open scholarship ... and careers](https://bit.ly/20170609rdmf).


Office of Scholarly Communication
Training -
[How to Get the Most Out of Modern Peer Review](https://www.training.cam.ac.uk/osc/event/2080517),
Cambridge, UK, 30
Mar 2017. [The role of peer-reviewers in promoting open science](http://bit.ly/20170329peerrev).

[European Bioconductor Developer Meeting](http://scicore.ch/events/eurobioc2016/),
Zurich, Switzerland, 6 - 7
December 2016. [`MSnbase2` - disk access is the limit](https://github.com/lgatto/EuroBioc2016-Basel-MSnbase2).

Cambridge Computational Biology Institute, UK, 16
November 2016. [Mapping the sub-cellular proteome: Computational analyses of high-throughput mass spectrometry-based spatial proteomics data](http://goo.gl/SZRMjg).

Dialogue on methods for ecology, Cambridge, UK, 15 November 2016,
Learning from heterogeneous data in spatial proteomics.

[Quantitative Proteomics and Data Analysis](https://www.biochemistry.org/Events/tabid/379/View/Programme/MeetingNo/TD007/Default.aspx),
Chester, UK, 4 - 5 April 2016. Inspection, visualisation and analysis
of quantitative proteomics data
([slides](http://bit.ly/qprotda),
[vignette](http://bit.ly/qprotdavig)).

[Introduction to Integrative Omics: proteomics](http://tinyurl.com/Intro-Integ-Omics-Prot),
European Bioinformatics Institute, Hinxton, UK, 8 March 2016.

## Get in touch

On the fediverse at <a rel="me" href="https://fosstodon.org/@lgatto">lgatto@fosstodon.org</a>,
by email at `name.surname<at>institution.be`, via a
[Github](https://github.com/lgatto) issue on a relevant repo or on the
[Bioconductor community slack](https://bioc-community.herokuapp.com/).
