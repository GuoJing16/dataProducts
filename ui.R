library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Blood Pressure Assessment"),
  sidebarPanel(
    textInput(inputId="text1", label = "Blood Systolic Pressure (mmhg)"),
    textInput(inputId="text2", label = "Blood Diastolic Pressure (mmhg)"),
    actionButton("goButton", "Get assessed!")    
  ),
  mainPanel(
    p(strong("  This is an app of Blood Pressure Assessment. 
       Users should type into their personal information about blood pressure in the"),
      span("left corresponding positions",style="color:red"),
      strong(". And then this app will give you a short brief assessment of your blood pressure")),
    em("Note: you have to make sure the unit of what you typed the numbers is mmhg, 
       otherwith you would receive inappropriate assessment of your blood pressure."),
    p(""),
    p('Your Blood Systolic Pressure in mmhg is'),
    textOutput('text1'),
    p('Your Blood Diastolic Pressure in mmhg is'),
    textOutput('text2'),
    p('Assessment of your blood pressure:'),
    textOutput('text3')
  )
))