# SeedCoatColor
# Principal Component Analysis using Rstudio
[example of plant physilogical parameters](https://plantbreederspot.blogspot.com/2021/02/principal-component-analysis-using.html?m=1)

```
install.packages("factoextra")
library(factoextra)
data<-seed_data[c(2:4)]
prcomp(data, scale. = TRUE)

pca<-prcomp(data, scale. = TRUE)      
summary(pca)
fviz_eig(pca)

```

  result: 
  Standard deviations (1, .., p=3):
  [1] 1.68526478 0.39037109 0.08656224

  Rotation (n x k) = (3 x 3):
             PC1         PC2        PC3
  Width  0.5730098 -0.65646404 -0.4906269
  Height 0.5671219  0.74978589 -0.3408722
  Area   0.5916355 -0.08292214  0.8019298

Importance of components:
                          PC1    PC2     PC3
Standard deviation     1.6853 0.3904 0.08656
Proportion of Variance 0.9467 0.0508 0.00250
Cumulative Proportion  0.9467 0.9975 1.00000


# data using in R

[Ref1](https://cran.r-project.org/web/packages/ggfortify/vignettes/plot_pca.html)
[Ref2](https://www.datacamp.com/community/tutorials/pca-analysis-r)
[Ref3](http://www.sthda.com/english/articles/31-principal-component-methods-in-r-practical-guide/112-pca-principal-component-analysis-essentials/#basics)

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


![img](https://github.com/seninfobio/SeedCoatColor/blob/seninfobio/Seed_data_PCA1.png)

















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
