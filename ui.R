shinyUI(
  pageWithSidebar(
    headerPanel("Prediction for miles per gallon"),
    sidebarPanel(
      h4('Application to predict miles per gallon based on mtcars dataset.'),
      h4('* Select option'),
      h4('* Input values'),
      h4('* Submit to get the results'),
      hr(),
      checkboxGroupInput("chbox", label = h3("Select converstion options"), 
                         choices = list("Horsepower" = "hp", "Cylinders" = "cyl")),
      hr(),
      h3('Input values'),
      numericInput('hp', 'Horsepower', 200, min = 50, max = 350, step = 7),
      numericInput('cr', 'Cylinders', 6, min = 4, max = 8, step = 4),
      hr(),
      
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results'),
      h4('Your selected option'),
      verbatimTextOutput("predictors"),
      h4('Your selected model'),
      verbatimTextOutput("model"),
      h4('Prediction result'),
      verbatimTextOutput("prediction")
    )
  )
)