library(shiny)
library(datasets)
mpg_data <- mtcars

shinyServer(function(input, output) {
  Text <- reactive({
    x<-length(input$chbox)
    if (x==0){"Please choose an option"} 
    else if(x==1){paste(input$chbox[1])} 
    else if(x==2){paste(input$chbox[1],"+",input$chbox[2])} 
  })
  modelText <- reactive(paste("mpg ~", Text()))
  output$predictors <-renderText({Text()})
  output$model <- renderText({
    if (length(input$chbox)==0){"Please choose an option"} 
    else{modelText()}
  })
  output$prediction <- renderText({
    if (length(input$chbox)==0){"Please choose an option"} 
    else{
      fit<-lm(as.formula(modelText()),data=mtcars)
      c<-input$cr
      h<-input$hp
      d_f<-data.frame(cyl=c,hp=h)
      predict(fit,d_f) }
  })
}
)