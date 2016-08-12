library(shiny)


shinyUI(fluidPage(
  titlePanel("Visualisation of different normalization methods"),
  sidebarLayout(
      ## sidebar panel
      sidebarPanel(
          ## Controls
          h3("Controls"),
          selectInput("method", "Method:", 
                      choices = c("none", "scale", "quantile", "cyclicloess")),
          helpText("Data was generated at random from a normal distribution. For more information on the methods please consider the helping page of the function normalizeBetweenArrays() included in the package limma."),
          hr(),
          ## Dependencies
          h3("Dependencies"),
          p("The following R packages are needed for the shiny app."),
          code('install.packages("shiny")'),
          br(),
          code('install.packages("ggplot2")'), 
          br(),
          code('install.packages("limma")'),
          hr(),
          ## References
          h3("References"),
          p("Ritchie ME, Phipson B, Wu D, Hu Y, Law CW, Shi W and Smyth GK (2015). 'limma powers differential expression analyses for RNA-sequencing and microarray studies.' Nucleic Acids Research, 43(7), pp. e47.")
      ),
      ## main panel
      mainPanel(
          plotOutput("plots", width = "100%")      
      ),
  )
))
