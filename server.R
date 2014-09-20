library(UsingR)

shinyServer(
  function(input, output) {
    output$text1 <- renderText({input$text1})
    output$text2 <- renderText({input$text2})
    output$text3 <- renderText({
      input$goButton
      isolate(getAssess(input$text1, input$text2))
    })
  }
)

getAssess<-function(text1,text2){
  
  if(text1==""){
    final<-"Please type in two number of blood pressure!"
  }
  else{
    text1<-as.numeric(text1)
    text2<-as.numeric(text2)
    if(text1>300 | text2 >300){
      final<-"The blood pressure couldn't be great than 300, please check it!"
    }
    else if(text1<0 | text2 <0){
      final<-"Don't be kidding, you can't have negative blood pressure!!"
    }
    else if(text1<text2){
      final<-"You may have typed in invalid data, 
      Blood Systolic Pressure should be great than Blood Diastolic Pressure. please check it!"
    }
    else if(text1>140 & text2>90){
      final<-"You may have hypertention, please see your doctor!"
    }
    else if(text1<90 & text2<60){
      final<-"You may have hypotention, please see your doctor!"
    }
    else{
      final<-"Your blood pressure is normal, congratulations!"
    }
  }
  return(final) 
}



