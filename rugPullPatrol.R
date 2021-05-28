### Data Crawling ----
library("Rcrawler")
library("rvest")
library("XML")
link<-"https://bitcloutlist.com/" #Cloutgate doesn't allow access
data<-Rcrawler(link, ExtractCSSPat=c(".th"), ManyPerPattern = TRUE,
                 ignoreAllUrlParams = TRUE, no_cores = 4, no_conn = 4, 
               MaxDepth = 1, dataUrlfilter = "/u/", crawlUrlfilter ="/u/",
               PatternsNames =c("Rank",	"Profile",	"Status","Coin Price",
                                "1h%", "24h%","7d%",	"Market Cap",	"Value in profile",	"Circulating supply",
                                "Followers"	))



### Some graphs ---- 
pairs(data, panel=panel.smooth)


### Basic inferential model ----
lm1<-lm(~,data=data) 
anova(lm1)
summary(lm1); e
drop1(lm1, test="F")
plot(lm1$residuals)
               
               
               