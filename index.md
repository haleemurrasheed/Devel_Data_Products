---
title       : Application for miles per gallon
subtitle    : Developing Data Products
author      : Haleem
job         : Research
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Calculating miles per gallong Application

The application predicts miles per gallon for a car which is based on mtcars dataset.


The idea is to check the mileage of the automobile according to the cylinders or horsepower. 


--- .class #id 

##  What's your car mpg???


  <img height='350' src="mpg.jpg" />

***

---  




## R Code  
  


```r
fit<-lm(mpg~cyl+hp,data=mtcars)
fit
```

```
## 
## Call:
## lm(formula = mpg ~ cyl + hp, data = mtcars)
## 
## Coefficients:
## (Intercept)          cyl           hp  
##     36.9083      -2.2647      -0.0191
```

***

--- 
  
  
  
  
## Example:
  
  

```r
pred<-predict(fit,data.frame(cyl=4,hp=200))
pred
```

```
##     1 
## 24.03
```

***

--- 
  

## Steps in making presentation



install.packages("devtools")

library(devtools)

install_github('slidify', 'ramnathv')

install_github('slidifyLibraries', 'ramnathv')

library(slidify) 

setwd("") 

author("") 

slidify('index.Rmd') 

library(knitr)

browseURL('index.html')



