#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
 shinyUI(fluidPage(

     pageWithSidebar(
         headerPanel('MTCARS K-means clustering'),
         sidebarPanel(
             selectInput('xcol', 'X Variable', names(mtcars)),
             selectInput('ycol', 'Y Variable', names(mtcars),
                         selected=names(mtcars)[[3]]),
             numericInput('clusters', 'Cluster count', 2,
                          min = 1, max = 3)
         ),
         mainPanel(
             plotOutput('plot1')
         )
     )
 ))


