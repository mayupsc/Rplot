# Rplot
some frequently used plot 

## 1. barplot in GO enrichment analysis
### vertical barplot (GO.barplot.vertical.R)

![paper](https://github.com/mayupsc/figures_in_ReadMe/blob/master/vertical.png)
### horizontal barplot (GO.barplot.horizontal.R)

![paper](https://github.com/mayupsc/figures_in_ReadMe/blob/master/horizontal.png)



## 2. Correlation

### correlation heatmap

```
library(Hmisc)
cormat_w_p <- rcorr(as.matrix(mydata))
cormat <- cormat_w_p$r
pheatmap(cormat,display_numbers = T,fontsize_number = 13,fontsize = 13)
```

```
```
## pca (ref:bioxfu)
```

mat <- log2(mat+1)
mat_remove0 <- mat[-which(rowSums(mat)==0),]
t_mat <- t(mat_remove0)
pca <- prcomp(t_mat, center = T, scale. = T)

x <- pca$x
prop_var <- round(summary(pca)$importance[2,1:2]*100,2)

set2_cols <- brewer.pal(8, 'Set1')
layout(matrix(c(1,2),nrow=1), wid=c(5, 2))
par(mar=c(5,5,4,0))
par(xpd=TRUE)
plot(x[,1], x[,2], xlim=range(x[,1])*1.5, ylim=range(x[,2])*1.1, col=set2_cols,
      cex=4, pch= 16, cex.axis=1.5, cex.lab=1.5,
     xlab=paste0('PC1 (',prop_var[1],'% of Variance)'),
     ylab=paste0('PC2 (',prop_var[2],'% of Variance)')
)
```

