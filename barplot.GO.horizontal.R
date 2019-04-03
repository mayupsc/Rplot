# ResTop20

# GO.ID Term  Annotated Significant Expected  pvalue  type  FC  col
# xxx   xxx   xxx       xxx         xxx       xxx     xxx   xxx xxx


ResTop20 <- head(up_allRes,20)
pdf(file = up_pdf_out,height = 7,width = 12)

ResTop20$col[ResTop20$type=="MF"] <- "mediumseagreen"
ResTop20$col[ResTop20$type=="BP"] <- "#E69F00"
ResTop20$col[ResTop20$type=="CC"] <- "steelblue3"


FC=as.numeric(ResTop20$FC)
names(FC)= ResTop20$Term
par(mar=c(5,30,2,2))
barplot(FC,
        cex.names=0.8,
        width=0.1,
        space=0.8,
        las=1,
        horiz=T,
        col=ResTop20$col,
        #axes=F,
        #axisnames = T,
        xlab = "fold enrichment",
        cex.axis = 0.8,
        bg="white",
        border=F,
        xlim=c(0,max(FC)+1.5),
        main=paste("Up-regulated gene GO analysis")
)
legend("topright",legend=c("CC","BP","MF"),fill=c("steelblue3","#E69F00","mediumseagreen"),cex=0.6,border=F)
#axis(1,cex.axis=0.6,mgp=c(1,0.5,0),tck=-0.01)
dev.off()