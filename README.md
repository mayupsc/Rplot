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
cormat_w_p <- rcorr(as.matrix(mydata))
cormat <- cormat_w_p$r
pheatmap(cormat,display_numbers = T,fontsize_number = 13,fontsize = 13)
```

```
```
