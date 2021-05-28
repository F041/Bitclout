library("Rcrawler")
library("rvest")
library(RCurl)


### Data Crawling ----
data<-Rcrawler(Website = "http://https://cloutgate.com//")


	
link<-
prova<- read_html("http://cloutgate.com//")  %>%
  html_nodes("p-0.card-body") %>%
  html_text()




#main > div > div > div:nth-child(5) > div.p-0.card-body > div.table-responsive > div
### Some graphs ---- 
pairs(data, panel=panel.smooth)


### Basic inferential model ----
lm1<-lm(~,data=data) 
anova(lm1)
summary(lm1); e
drop1(lm1, test="F")
plot(lm1$residuals)
               
               