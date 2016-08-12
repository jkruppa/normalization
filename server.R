library(shiny)
require(ggplot2)
require(limma)
# The palette with black:
cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73",
                "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
##
resDf <- readRDS("geneData.RDS")
logResMat <- log2(data.matrix(resDf))

shinyServer(function(input, output) {
    output$plots <- renderPlot(
        ggplot(stack(data.frame(normalizeBetweenArrays(logResMat, method = input$method))), aes(ind, values)) +
        geom_boxplot(fill = c(rep(cbbPalette[4], 9), rep(cbbPalette[2], 9))) +
        theme_bw() + xlab("") + ylab("") + ylim(-11, 11)
    )
})
