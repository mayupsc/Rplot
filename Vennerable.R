##### up genes overlap #####
gene.list <- list(down_LRE5=LRE5.downDEGs,down_LRE7=LRE7.downDEGs)
Vdemo_dml21_dml22 <-  compute.Venn(Venn(gene.list))
SetLabels <- VennGetSetLabels(Vdemo_dml21_dml22)
SetLabels[SetLabels$Label=="up_LRE5","x"] <- -15
SetLabels[SetLabels$Label=="up_LRE7","x"] <- 15
Vdemo_dml21_dml22 <- VennSetSetLabels(Vdemo_dml21_dml22,SetLabels)

## change color
gp <- VennThemes(Vdemo_dml21_dml22)
#gp[["Face"]][["11"]]$col <-  "white"
gp[["Set"]][["Set1"]]$col<-  brewer.pal(12,"Paired")[1]
gp[["Set"]][["Set2"]]$col<-  brewer.pal(12,"Paired")[2]
gp[["Set"]][["Set1"]]$fill<-  'black'
gp[["Set"]][["Set2"]]$fill<- 'black'  
gp[["SetText"]][["Set1"]]$col<- 'black'
gp[["SetText"]][["Set2"]]$col<- 'black'

gp[["Face"]][["10"]]$fill<-  brewer.pal(12,"Paired")[1]
gp[["Face"]][["01"]]$fill<-  brewer.pal(12,"Paired")[2]
gp[["Face"]][["11"]]$fill<-  brewer.pal(9,"Blues")[7]

plot(Vdemo_dml21_dml22, gp = gp)

