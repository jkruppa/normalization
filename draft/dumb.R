## resDf <- read.csv("geneData.csv")
## ### more controls
## M <- apply(resDf[,2:4], 1, mean)
## SD <- apply(resDf[,2:4], 1, sd)
## controls <- data.frame(Reduce(cbind,
##                               llply(1:6, function(...) abs(rnorm(nrow(resDf), M, SD)))))
## names(controls) <- paste0("C_", 4:9)
## ### more cases
## M <- apply(resDf[,5:7], 1, mean)
## SD <- apply(resDf[,5:7], 1, sd)
## cases <- data.frame(Reduce(cbind,
##                            llply(1:6, function(...) abs(rnorm(nrow(resDf), M, SD)))))
## names(cases) <- paste0("T_", 4:9)
## fullDf <- cbind(resDf[,-1], cases, controls)
## fullDf <- fullDf[sort(names(fullDf))]
## ##
## saveRDS(fullDf, "geneData.RDS")
