#### Libraries

library(FactoMineR)
library(factoextra)
library(patchwork)


#### Data

data_acp= read.csv("seedimage.data.csv", h=T, sep = ",", row.names = 1)

#### See the table

View(data_acp)


##acp

res.pca = PCA(data_acp[1:9], scale = TRUE, graph=F)



# Plot following contribution

dim12 = fviz_pca_var(res.pca, col.var="contrib",
                     gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
                     repel = TRUE, 
                     title = "(A)",
                     axes = c(1, 2)
)

dim12




dim13 = fviz_pca_var(res.pca, col.var="contrib",
                     gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
                     repel = TRUE, 
                     title = "(B)",
                     axes = c(1, 3)
)

dim13


dim12 + dim13



## Simple biplot
 

fviz_pca_biplot(res.pca, 
                             repel = FALSE,
                             #col.var = "black",
                             geom.var = "text",
                             #label = "var",
                             #title = "B: Branching type",
                             #habillage = grp_branch, # color by groups)
                             palette = c("#00AFBB", "#E7B800", "#FC4E07")
)+
  theme(legend.position="top")




## clustering


### HCPC on ACP


res.hcpc = HCPC(res.pca, graph = FALSE)


clust = res.hcpc$data.clust


### Save in csv file


write.csv(clust, "clusters.csv")


#### Import our new data with cluster information



data_acp_new= read.csv("seedimage.data.csv", h=T, sep = ",", row.names = 1)


## ACP


res.pca.new = PCA(data_acp[1:9], scale = TRUE, graph=F)



### Biplot habillage cluster

grp_cluster = as.factor(data_acp_new[, "Cluster"])


cluster = fviz_pca_biplot(res.pca.new, 
                          repel = FALSE,
                          col.var = "black",
                          geom.var = "text",
                          label = "var",
                          title = "",
                          habillage = grp_cluster,  # color by groups)
                          palette = c("#00AFBB", "#E7B800", "#FC4E07")
) +
  theme(legend.position="top") +
  theme_bw()

