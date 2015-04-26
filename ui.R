
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Fate&Horoscope"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(textInput('id1','Name', 'Enter a name, like Bob'),
    dateInput("date", "Date of birth"),
    submitButton('Tell me of Fate')
    ),

    # Show a plot of the generated distribution
    mainPanel(
        h3('Illustrating outputs'),
        h4('your name is'), 
        verbatimTextOutput("oid1"), 
        h4('your Birth day is'), 
        verbatimTextOutput("odate"), 
        h4('key word of your fate'),
        verbatimTextOutput("oid2")
        
    )
  ))
)
