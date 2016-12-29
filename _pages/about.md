---
permalink: /about/
title: "About"
excerpt: "About Laurent Gatto."
modified: 2015-05-01
comments: false
author_profile: true
header:
   image: /assets/images/slide-code.png
---

{% include toc %}

## Short bio

I moved to Cambridge, UK, in January 2010 to work in the
[Cambridge Centre for Proteomics](http://proteomics.bio.cam.ac.uk/) on
various aspects of quantitative and spatial proteomics, developing
new methods and implementing computational tools with a
strong emphasis on rigorous and reproducible data analysis. I am also
a visiting scientist in the [PRIDE](http://www.ebi.ac.uk/pride/) team
at the
[European Bioinformatics Institute](http://www.ebi.ac.uk/pride/),
affiliated [member](http://bioconductor.org/about/core-team/) of the
[Bioconductor](http://bioconductor.org) project, a
[fellow](http://software.ac.uk/fellows/laurent-gatto) of the
[Software Sustainability Institute](http://software.ac.uk/), a
[Software Carpentry instructor](http://software-carpentry.org/team/)
and an affiliate teaching staff at the
[Cambridge Computational Biology Institute](http://www.ccbi.cam.ac.uk/members.php). I
currently lead the
[Computational Proteomics Unit](http://cpu.sysbiol.cam.ac.uk/).

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

#### Proteomics

My work on the design and implementation of reproducible mass
spectrometry-based proteomics data analysis pipeline has materialised
in the development of the
[`MSnbase`](http://bioconductor.org/packages/MSnbase) 
([Gatto et al., 2012](http://www.ncbi.nlm.nih.gov/pubmed/22113085))
package to manipulate, process and analyse quantitative proteomics
data. The `MSnbase` infrastructure also supports the work on the
statistical learning applied to spatial proteomics (see below). The
[`synapter`](http://bioconductor.org/packages/synapter) package and
the associated publications
([Bond et al., 2013](http://www.ncbi.nlm.nih.gov/pubmed/23510225) and
[Shliaha et al., 2013](http://www.ncbi.nlm.nih.gov/pubmed/23514362))
addresses MS<sup>E</sup> label-free quantitation, optionally including
ion mobility separation.

#### Spatial proteomics

In biology, localisation is function: knowledge of the localisation of
proteins is of paramount importance to assess and study their
function, and spatial proteomics is the systematic study of the
sub-cellular localisation of proteins and changes thereof
([Gatto et al., 2010](http://www.ncbi.nlm.nih.gov/pubmed/21080489)). Since
2010, I have developed novel software and machine learning approaches
enabling more reliable and systematic inference of protein
localisations using quantitative proteomics. This work has
materialised in the
[`pRoloc`](http://bioconductor.org/packages/pRoloc) package
([Gatto et al., 2014](http://www.ncbi.nlm.nih.gov/pubmed/24413670))
that implements various established classification algorithms,
effective visualisation techniques
([Gatto el al., 2015](http://www.ncbi.nlm.nih.gov/pubmed/25690415)) as
well as novelty detection
([Breckels et al., 2013](http://www.ncbi.nlm.nih.gov/pubmed/23523639))
and transfer learning, harvesting GO annotations of microscopy-based
methods to improve the spatial resolution of experimental spatial
proteomics data.

#### Past research 

My MSc and
[PhD work](http://theses.ulb.ac.be/ETD-db/collection/available/ULBetd-07112006-210348/),
I studied micro-evolutionary genetic patterns of the Broom leaf beetle
[*Gonioctena*](http://www.biol.uni.wroc.pl/cassidae/European%20Chrysomelidae/gonioctena%20variabilis.htm)
[*variabilis*](http://davesgarden.com/guides/bf/go/6185/) in Southern
Europe
([Gatto el al., 2008](http://onlinelibrary.wiley.com/doi/10.1111/j.1095-8312.2008.00972.x/abstract)),
the application of short interspersed mobile elements (SINEs) to study
the evolution of cetaceans applicability of the General Time
Reversible nucleotide substitution model in the light of differential
lineage sorting
([Gatto el al., 2006](http://www.ncbi.nlm.nih.gov/pubmed/19455208)). I
also spend 3 years in industry working on genomic and transcriptomics
data, in particular the microarray quality control
([Shi et al., 2010](http://www.ncbi.nlm.nih.gov/pubmed/20676074)).

## Teaching

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

Breckels LM, Mulvey CM, Lilley KS and Gatto L. *A Bioconductor
workflow for processing and analysing spatial proteomics data*
[version 1; referees: awaiting peer review]. F1000Research 2016,
5:2926
([doi:10.12688/f1000research.10411.1](https://f1000research.com/articles/5-2926/)).
[Software: [MSnbase](http://bioconductor.org/packages/MSnbase),
[pRoloc](http://bioconductor.org/packages/pRoloc),
[pRolocGUI](http://bioconductor.org/packages/pRolocGUI)]

Wieczorek S, Combes F, Lazar C, Giai Gianetto Q, Gatto L, Dorffer A,
Hesse A, Coute Y, Ferro M, Bruley C, and Burger T. *DAPAR & ProStaR:
software to perform statistical analyses in quantitative discovery
proteomics* Bioinformatics 2016, [doi:10.1093/bioinformatics/btw580](http://bioinformatics.oxfordjournals.org/content/early/2016/09/23/bioinformatics.btw580).

Perez-Riverol Y, Gatto L, Wang R, Sachsenberg T, Uszkoreit J,
Leprevost Fda V, Fufezan C, Ternent T, Eglen SJ, Katz DS, Pollard TJ,
Konovalov A, Flight RM, Blin K, Vizcaino JA. *Ten Simple Rules for
Taking Advantage of Git and GitHub*. PLoS Comput Biol. 2016 Jul
14;12(7):e1004947. [doi:10.1371/journal.pcbi.1004947](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1004947)
[PMID:27415786](http://www.ncbi.nlm.nih.gov/pubmed/27415786).

Breckels LM, Holden S, Wonjar D, Mulvey CM, Christoforou A, Groen AJ,
Kohlbacher O, Lilley KS, Gatto L. *Learning from heterogeneous data
sources: an application in spatial proteomics*. PLoS Comput Biol. 2016
May 13;12(5):e1004920
[doi:10.1371/journal.pcbi.1004920](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1004920), 
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
12;7:9992
[doi:10.1038/ncomms9992](http://www.nature.com/ncomms/2016/160112/ncomms9992/abs/ncomms9992.html)
([PMID:26754106](http://www.ncbi.nlm.nih.gov/pubmed/26754106),
[data](http://www.bioconductor.org/packages/release/data/experiment/html/pRolocdata.html),
[PRIDE](http://www.ebi.ac.uk/pride/archive/projects/PXD001279),
[resource](https://lgatto.shinyapps.io/christoforou2015/))

Gatto L, Hansen KD, Hoopmann MR, Hermjakob H, Kohlbacher O and Beyer,
A *Testing and validation of computational methods for mass
spectrometry*. J Proteome
Res. 2015. [doi: 10.1002/stem.2067](http://pubs.acs.org/doi/abs/10.1021/acs.jproteome.5b00852)
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


Griss J, <i>et al.</i> *The mzTab Data Exchange Format: communicating
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
href="http://www.mcponline.org./content/early/2014/05/20/mcp.M113.036350.abstract">Publisher</a>,
<a href="http://www.ncbi.nlm.nih.gov/pubmed/24846987">PubMed</a>, <a
href="http://www.bioconductor.org/packages/devel/bioc/html/pRoloc.html">software</a>,
<a
href="http://www.genomeweb.com/proteomics/cambridge-researchers-outline-best-practices-analysis-organelle-proteomics-data">press
coverage</a>)

Walzer M, <i>et al.</i> *qcML: an exchange format for quality control
metrics from mass spectrometry experiments*, Mol Cell Proteomics. 2014
Apr 23. (<a
href="http://www.ncbi.nlm.nih.gov/pubmed/24760958">PubMed</a>).


Vizcaíno J.A. <i>et al.</i> *ProteomeXchange: globally co-ordinated
proteomics data submission and dissemination*, Nature Biotechnology
2014, 32, 223–226.  (<a
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


#### Book chapters

Christoforou A., Mulvey C., Breckels LM., Gatto L. and Lilley
KS. [*Spatial Proteomics: Practical Considerations for Data Acquisition and Analysis in Protein Subcellular Localisation Studies*](http://pubs.rsc.org/en/content/chapter/bk9781849738088-00185/978-1-84973-808-8#!divabstract)
in *Quantitative Proteomics*, 185-210, The Royal Society of Chemistry,
2014.

Breckels LM, Gibb S, Petyuk V and Gatto L
[*R for Proteomics*](http://pubs.rsc.org/en/content/chapter/bk9781782624288-00321/978-1-78262-428-8#!divabstract)
in *Proteome Informatics*, The Royal Society of Chemistry, November
2016.
      
#### Technical Notes

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

## Contact

[Computational Proteomics Unit](http://cpu.sysbiol.cam.ac.uk) <br />
[Cambridge Centre for Proteomics](http://proteomics.bio.cam.ac.uk/) <br />
Cambridge Systems Biology Centre <br />
University of Cambridge <br />
Tennis Court Road <br />
Cambridge, [CB2 1GA](https://maps.google.com/maps?q=CB2+1GA&hl=en&sll=37.0625,-95.677068&sspn=51.355924,106.962891&hnear=CB2+1GA,+United+Kingdom&t=m&z=16&iwloc=A), UK <br />


