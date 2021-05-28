### Data Crawling ----
library("Rcrawler")
library("rvest")
data<-Rcrawler(Website = "http://https://cloutgate.com//")




### Some graphs ---- 
pairs(data, panel=panel.smooth)


### Basic inferential model ----
lm1<-lm(~,data=data) 
anova(lm1)
summary(lm1); e
drop1(lm1, test="F")
plot(lm1$residuals)
               
               