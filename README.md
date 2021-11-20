# SeedCoatColor
# data using in R

[Help](https://cran.r-project.org/web/packages/ggfortify/vignettes/plot_pca.html)

```
library(ggfortify)

View(seed_data)

df <- seed.data [6:4]           ]

pca_res <- prcomp(df, scale. = TRUE)

autoplot(pca_res, data = seed_data, colour = 'Accession')

autoplot(pca_res, data = seed_data, colour = 'Accession', label = TRUE, label.size = 3)

autoplot(pca_res, data = seed_data, colour = 'Accession', loadings = TRUE)

autoplot(pam(seed_data [-5], 3), frame = TRUE, frame.type = 'norm')

```


















#References

1. [2021. Morpho-agronomic, biochemical and molecular analysis of genetic diversity in the Mesoamerican common bean panel](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8062103/pdf/pone.0249858.pdf)
2. [2017. Assessing Genetic Variation and Relationships among a Mini Core Germplasm of Sesame (Sesamum indicum L.) Using Biochemical and RAPD Markers](https://www.scirp.org/journal/paperinformation.aspx?paperid=73898)
3. [2020. Genetic Mapping and Discovery of the Candidate Gene for Black Seed Coat Color in Watermelon (Citrullus lanatus)](https://www.frontiersin.org/articles/10.3389/fpls.2019.01689/full)
4. [2021. Identification of Candidate Genes Regulating the Seed Coat Color Trait in Sesame (Sesamum indicum L.) Using an Integrated Approach of QTL Mapping and Transcriptome Analysis](https://www.frontiersin.org/articles/10.3389/fgene.2021.700469/full)
5. [2021. Genome-wide association study of seed coat color in sesame (Sesamum indicum L.)](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0251526)

# Spectral for shape and size and LC-MS studies

1. [structural analysis of Black common bean](https://www.koreascience.or.kr/article/JAKO200509905834900.pdf)
2. [Morphological Seed Characterization of Common (Phaseolus vulgaris L.) and Runner (Phaseolus coccineus L.) Bean Germplasm: A Slovenian Gene Bank Example](https://www.hindawi.com/journals/bmri/2019/6376948/)
3. [Computer image analysis of seed shape and seed color for flax cultivar description](https://www.sciencedirect.com/science/article/pii/S0168169907002189?via%3Dihub#fig1)
4. [The BELT and phenoSEED platforms: shape and colour phenotyping of seed samples](https://plantmethods.biomedcentral.com/articles/10.1186/s13007-020-00591-8#Sec14)
5. [Image analysis based on color, shape and texture for rice seed (Oryza sativa L.) germination evaluation](https://www.sciencedirect.com/science/article/pii/S2452316X17306361)
6. [Possibility use of digital image analysis for the estimation of the rapeseed maturity stage](https://www.tandfonline.com/doi/full/10.1080/10942912.2017.1371188)
7. 
