# ResTop20

# GO.ID Term  Annotated Significant Expected  pvalue  type  FC  col
# xxx   xxx   xxx       xxx         xxx       xxx     xxx   xxx xxx


ResTop20 <- head(up_allRes,20)
## barplot
pdf(file = up_pdf_out,height = 7,width = 12)
p <- ggplot(ResTop20, aes(x=Term, y=FC,fill=type),split="type") +
  geom_col() +
  theme(axis.text.x=element_text(angle=60, hjust=1), ## adjust angle of GO terms
        plot.margin = unit(c(2,2,2,30),"mm")) +
  scale_fill_manual(values=c("mediumseagreen", "#E69F00", "steelblue3"))+
  xlab("")+
  ylab("Fold Enrichment")+
  ggtitle(paste0(sample," Up-regulated genes GO analysis (",nrow(up_gene_list),")"))
 #facet_grid(.~type, scale="free_x")
print(p)

#axis(1,cex.axis=0.6,mgp=c(1,0.5,0),tck=-0.01)
dev.off()
