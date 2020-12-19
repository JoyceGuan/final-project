install.packages("ipumsr")
require("ipumsr")
if(!require("ipumsr")) stop("Reading IPUMS data into Rrequires the ipumsr package")
setwd()
ddi<-read_ipums_ddi("usa_00001.xml")
data <-read_ipums_micro(ddi)
install.packages("tibble")
glimpse(data)
summary(data)
library(ipumsr)
library(R.utils)
library(tibble)
library(data.table)
library(dplyr)
library(igraph)
library(ggplot2)
library(AER)
library(jtools)
library("naniar")

## Cleaning Data (Removing NA), Creating  tidy data:
data1<-replace_with_na(data, replace = list(EDUCD=c(000, 001,002,999),
                                            HHINCOME=c(9999999),
                                            WKSWORK2=c(0),
                                            UHRSWORK=c(00),
                                            LABFORCE=c(00),
                                            UHRSWORK=c(00),
                                            WKSWORK2=c(0),
                                            FOODSTMP=c(0),
                                            CITIZEN=c(0),
                                            RACE=c(6,7,8,9),
                                            HISPAN=c(9),
                                            EDUCD=c(000,001,002,999),
                                            GRADEATT=c(0),
                                            GRADEATTD=c(0),
                                            DEGFIELD=c(0),
                                            DEGFIELDD=c(0),
                                            EMPSTAT=c(0),
                                            EMPSTATD=c(00,11,12,13,14,15,21,22,33,34),
                                            AVAILBLE=c(0),
                                            INCTOT=c(9999999),
                                            FTOTINC=c(9999999),
                                            INCWAGE=c(999999,999998),
                                            TRANTIME=c(000)))

age<-as.numeric(AGE)
##EDUCATION:
educ_nohs <- as.numeric((EDUCD > 010) & (EDUCD < 060))
educ_hs <- as.numeric((EDUCD >=061)& (EDUCD<065))
educ_smcoll<-as.numeric((EDUCD>=065)& (EDUCD<080))
educ_as <-as.numeric((EDUCD>=080) & (EDUCD<083))
educ_bach <-as.numeric((EDUCD>=090) & (EDUCD<110))
educ_adv <-as.numeric((EDUCD>=101) & EDUCD<=116)

#RACE
white<-as.numeric(RACE==1)
black_afr <-as.numeric(RACE==2)
asian <-as.numeric((RACE==4)| (RACE==5)|(RACE==6))
other_race <-as.numeric((RACE==7)|(RACE==8)|(RACE==9))





attach(data1)


#EDUC
educ_nohs<-as.factor(educ_nohs)
educ_hs<-as.factor(educ_hs)
educ_smcoll<-as.factor(educ_smcoll)
educ_as<-as.factor(educ_as)
educ_adv<-as.factor(educ_adv)

#Foodstamp
FOODSTMP<- as.factor(FOODSTMP)
levels(FOODSTMP) <- c("Yes","No")


#MARST
MARST<-as.factor(MARST)
levels(MARST)<-c("Married,spouse present",
                 "Married,spouse absent",
                 "Separaate",
                 "divorced",
                 "widowed",
                 "never married/single")

#Race
RACE<-as.factor(RACE)
levels(RACE)<-c("White",
                "	Black/African American/Negro",
                "	American Indian or Alaska Native",
                "Chinese",
                "japanese",
                "ohter asian and pacific",
                "ohter race",
                "two major race",
                "three or more")
#RACE
levels(SEX)<-c("male","female")
levels(SEX)
RACAMIND<-as.factor(RACAMIND)
levels(RACAMIND)<-c("NO","YES")
RACASIAN<-as.factor(RACASIAN)
levels(RACASIAN)<-c("NO","YES")
RACWHT<-as.factor(RACWHT)
levels(RACWHT)<-c("NO","YES")
RACOTHER<-as.factor(RACOTHER)
levels(RACOTHER)<-c("NO","YES")
#EDUC
EDUC<-as.factor(EDUC)
levels(EDUC) <-c("nursery scholl to grade4",
                 "grade 5,6,7 or8",
                 "grade9",
                 "grade10",
                 "grade11",
                 "grade12",
                 "1 years of college",
                 "2 yeasr of college",
                 "3 years of coll",
                 "4 years of coll",
                 "5+ years of coll",
                 "na")
#Employment status
EMPSTAT<-as.factor(EMPSTAT)
levels(EMPSTAT)<-c("employed","Unemployed","Not in labor force")

#LABFORCE
LABFORCE<-as.factor(LABFORCE)
levels(LABFORCE)<- c("yes","no")

#work availability
AVAILBLE<-as.factor(AVAILBLE)
levels(AVAILBLE)<-c("no, temporarily ill",
                    "no,ohter reasons",
                    "yes,available","not report"
)

#Any health insurance coverage
HCOVANY<-as.factor(HCOVANY)
levels(HCOVANY)<-c("yes","no")

#Private health insurance coverage
HCOVPRIV<-as.factor(HCOVPRIV)
levels(HCOVPRIV)<-c("yes","no")
#PRIVATE
HCOVPRIV<-as.factor(HCOVPRIV)
levels(HCOVPRIV)<-c("yes","no")
#PUBLIC
HCOVPUB<-as.factor(HCOVPUB)
levels(HCOVPUB)<-c("yes","no")

#	Number of families in household
NFAMS<-as.factor(NFAMS)




#CITZEN
CITIZEN<-as.factor(CITIZEN)
levels(CITIZEN)<-c("born abroad of american parents","naturalized citizen","not a citizen")

#field of degree
DEGFIELD<-as.factor(DEGFIELD)
levels(DEGFIELD)<-c("Argriculture",
                    "environment and naural resources",
                    "architecture",
                    "area, ethnic,and civilization status",
                    "communication",
                    "communication tech",
                    "computer and information service",
                    "Cosmetology service and culinary arts",
                    "education asministration and teaching",
                    "engineering",
                    "engineering tech",
                    "linguistics and foreign language",
                    "family and consumer science",
                    "law",
                    "english languange,literature, and composition",
                    "liberal arts and humannities",
                    "library sciences",
                    "biology and life science",
                    "mathematic and statistics",
                    "military tech",
                    "interdisciplinary and mnulti-disciplinary study",
                    "physical fintness, park, recreation and leisure",
                    "philosophy and religious studies",
                    "thelogy and religious vocation",
                    "physical sciences",
                    "Nuclear, Industrial Radiology, and Biological Technologies",
                    "	Psychology",
                    "Criminal Justice and Fire Protection",
                    "	Public Affairs, Policy, and Social Work",
                    "55	Social Sciences",
                    "	Construction Services",
                    "	Electrical and Mechanic Repairs and Technologies",
                    "Precision Production and Industrial Arts",
                    "Transportation Sciences and Technologies",
                    "	Fine Arts",
                    "61	Medical and Health Sciences and Services",
                    "	Business",
                    "	History")

#Numeric
HHINCOME<-as.numeric(HHINCOME)
levels(HHINCOME)
AGE<-as.numeric(AGE)
levels(AGE)
WKSWORK1<-as.numeric(WKSWORK1)
levels(WKSWORK1)
WKSWORK2<-as.numeric(WKSWORK2)
levels(WKSWORK2)
UHRSWORK<-as.numeric(UHRSWORK)
INCTOT<-as.numeric(INCTOT)
FTOTINC<-as.numeric(FTOTINC)
INCWAGE<-as.numeric(INCWAGE)
TRANTIME<-as.numeric(TRANTIME)


dat2<-data.frame(YEAR,HHWT,HHINCOME,FOODSTMP,NFAMS,NCHLT5,SEX,AGE,RACE,HISPAN,CITIZEN,RACAMIND,RACASIAN,RACBLK,RACWHT,RACOTHER,HCOVANY,HCOVPRIV,HCOVPUB,EDUC,EDUCD,educ_nohs,educ_hs,educ_as,educ_smcoll,educ_bach,educ_adv, GRADEATT,DEGFIELD,DEGFIELD2,EMPSTAT,LABFORCE,WKSWORK1,WKSWORK2,UHRSWORK,AVAILBLE,INCTOT,FTOTINC,INCWAGE,POVERTY,TRANTIME)

save(dat2, file = "FINALGENDER_a.RData")

detach()
load("/Users/new/Desktop/R/FINALGENDER_a.RData")

##尚在摸索怎么用
library(doBy)
mystats<-function(x,na.omit=FALSE){
  if(na.omit)
    x<-x[!is.na(x)]
  m<-mean(x)}

#how to dele
summaryBy(UHRSWORK+INCWAGE+NCHLT5+ NCHILD+AVAILBLE+EDUC+DEGFIELD+POVERTY+RACBLK+RACE+RACAMIND+RACASIAN+RACBLK+RACOTHER+RACWHT+MARST~am,data=dat_usea,FUN =mystats )

#how to delete some row or column: example
dat3<-subset(dat3,select=-RACOTHER)

#data subset is narrowed down to age between 25-65, year 2019.
use_var<-(AGE>=25)&(AGE<=65)&(YEAR=2019)
dat_use1<-subset(dat3,use_var)

use_var<-(AGE>=25)&(AGE<=65)&(YEAR=2019)
dat_use1<-subset(dat3,use_var)


#to analyze what factors contribute the most to the working time differences.
# people work as PT
model1<-glm(part_time~AGE + I(AGE^2) +SEX.1+NFAMS+NCHLT5+HISPAN+RACAMIND.1+RACASIAN.1+RACBLK.1+RACOTHER.1+RACWHT.1+educ_nohs+educ_hs+educ_smcoll+educ_bach+educ_as+educ_adv,family = binomial,(data=dat_use1))
summary(model1)

part_time_odd<-exp(PT_glm$coefficients)
full_time_odd<-exp(FT_glm$coefficients)
long_time_odd<-exp(longtime_glm$coefficients)
