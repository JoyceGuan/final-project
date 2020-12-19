new
================
Meirou Guan
12/18/2020

``` r
 load("~/Desktop/ecob2000_lecture1/Meirou.Genderwage_a.RData")
```

``` r
summary(newdata)
```

    ##       YEAR          SERIAL           CBSERIAL              HHWT       
    ##  Min.   :2006   Min.   :      1   Min.   :1.000e+00   Min.   :   1.0  
    ##  1st Qu.:2006   1st Qu.: 337994   1st Qu.:7.107e+05   1st Qu.:  55.0  
    ##  Median :2019   Median : 688870   Median :2.019e+12   Median :  78.0  
    ##  Mean   :2013   Mean   : 690847   Mean   :1.053e+12   Mean   :  96.7  
    ##  3rd Qu.:2019   3rd Qu.:1041472   3rd Qu.:2.019e+12   3rd Qu.: 112.0  
    ##  Max.   :2019   Max.   :1428037   Max.   :2.019e+12   Max.   :2377.0  
    ##                                                                       
    ##      STRATA           HHINCOME       FOODSTMP        NFAMS       
    ##  Min.   :  10001   Min.   : -39996   1:5605098   Min.   : 1.000  
    ##  1st Qu.:  80336   1st Qu.:  37200   2: 604196   1st Qu.: 1.000  
    ##  Median : 200001   Median :  68700               Median : 1.000  
    ##  Mean   : 347675   Mean   :  93132               Mean   : 1.085  
    ##  3rd Qu.: 370636   3rd Qu.: 115000               3rd Qu.: 1.000  
    ##  Max.   :7777722   Max.   :2907600               Max.   :20.000  
    ##                    NA's   :232004                                
    ##      NCHILD           NCHLT5            SEX               AGE       
    ##  Min.   :0.0000   Min.   :0.00000   male  :3031782   Min.   : 0.00  
    ##  1st Qu.:0.0000   1st Qu.:0.00000   female:3177512   1st Qu.:20.00  
    ##  Median :0.0000   Median :0.00000                    Median :41.00  
    ##  Mean   :0.5006   Mean   :0.09371                    Mean   :40.58  
    ##  3rd Qu.:1.0000   3rd Qu.:0.00000                    3rd Qu.:59.00  
    ##  Max.   :9.0000   Max.   :9.00000                    Max.   :96.00  
    ##                                                                     
    ##                     MARST                                         RACE        
    ##  Married,spouse present:2609324   White                             :4815054  
    ##  Married,spouse absent : 102366   \tBlack/African American/Negro    : 599475  
    ##  Separaate             :  86940   Chinese                           :  75780  
    ##  divorced              : 537564   \tAmerican Indian or Alaska Native:  58660  
    ##  widowed               : 342635   japanese                          :  16668  
    ##  never married/single  :2530465   (Other)                           :      0  
    ##                                   NA's                              : 643657  
    ##      asian          black_afr        other_race         white       
    ##  Min.   :0        Min.   :0.0      Min.   :0        Min.   :0.0     
    ##  1st Qu.:0        1st Qu.:0.0      1st Qu.:0        1st Qu.:1.0     
    ##  Median :0        Median :0.0      Median :0        Median :1.0     
    ##  Mean   :0        Mean   :0.1      Mean   :0        Mean   :0.9     
    ##  3rd Qu.:0        3rd Qu.:0.0      3rd Qu.:0        3rd Qu.:1.0     
    ##  Max.   :1        Max.   :1.0      Max.   :0        Max.   :1.0     
    ##  NA's   :643657   NA's   :643657   NA's   :643657   NA's   :643657  
    ##      HISPAN          CITIZEN           RACAMIND        RACASIAN    
    ##  Min.   :0.0000   Min.   :1         Min.   :1.000   Min.   :1.000  
    ##  1st Qu.:0.0000   1st Qu.:2         1st Qu.:1.000   1st Qu.:1.000  
    ##  Median :0.0000   Median :2         Median :1.000   Median :1.000  
    ##  Mean   :0.2508   Mean   :2         Mean   :1.017   Mean   :1.057  
    ##  3rd Qu.:0.0000   3rd Qu.:3         3rd Qu.:1.000   3rd Qu.:1.000  
    ##  Max.   :4.0000   Max.   :3         Max.   :2.000   Max.   :2.000  
    ##                   NA's   :5464304                                  
    ##      RACBLK         RACOTHER         RACWHT      HCOVANY        HCOVPRIV      
    ##  Min.   :1.000   Min.   :1.000   Min.   :1.000   yes : 256565   yes : 995436  
    ##  1st Qu.:1.000   1st Qu.:1.000   1st Qu.:2.000   no  :2982988   no  :2244117  
    ##  Median :1.000   Median :1.000   Median :2.000   NA's:2969741   NA's:2969741  
    ##  Mean   :1.105   Mean   :1.048   Mean   :1.798                                
    ##  3rd Qu.:1.000   3rd Qu.:1.000   3rd Qu.:2.000                                
    ##  Max.   :2.000   Max.   :2.000   Max.   :2.000                                
    ##                                                                               
    ##  HCOVPUB                        EDUC            educ_adv         educ_as      
    ##  yes :2022204   1 years of college:1856275   Min.   :0.0      Min.   :0.0     
    ##  no  :1217349   4 years of coll   : 877049   1st Qu.:0.0      1st Qu.:0.0     
    ##  NA's:2969741   2 yeasr of college: 711231   Median :0.0      Median :0.0     
    ##                 5+ years of coll  : 534094   Mean   :0.2      Mean   :0.1     
    ##                 grade 5,6,7 or8   : 473989   3rd Qu.:0.0      3rd Qu.:0.0     
    ##                 grade9            : 472525   Max.   :1.0      Max.   :1.0     
    ##                 (Other)           :1284131   NA's   :399153   NA's   :399153  
    ##    educ_bach         educ_hs         educ_nohs       educ_smcoll    
    ##  Min.   :0.0      Min.   :0.0      Min.   :0.0      Min.   :0.0     
    ##  1st Qu.:0.0      1st Qu.:0.0      1st Qu.:0.0      1st Qu.:0.0     
    ##  Median :0.0      Median :0.0      Median :0.0      Median :0.0     
    ##  Mean   :0.2      Mean   :0.3      Mean   :0.2      Mean   :0.2     
    ##  3rd Qu.:0.0      3rd Qu.:1.0      3rd Qu.:0.0      3rd Qu.:0.0     
    ##  Max.   :1.0      Max.   :1.0      Max.   :1.0      Max.   :1.0     
    ##  NA's   :399153   NA's   :399153   NA's   :399153   NA's   :399153  
    ##      female                                              DEGFIELD       
    ##  Min.   :0.0000   61\tMedical and Health Sciences and Services: 161258  
    ##  1st Qu.:0.0000   education asministration and teaching       : 106332  
    ##  Median :1.0000   engineering                                 :  64913  
    ##  Mean   :0.5117   \tFine Arts                                 :  63285  
    ##  3rd Qu.:1.0000   55\tSocial Sciences                         :  61147  
    ##  Max.   :1.0000   (Other)                                     : 371045  
    ##                   NA's                                        :5381314  
    ##    DEGFIELD2                     EMPSTAT           LABFORCE      
    ##  Min.   : 0.0      employed          :2924184   Min.   :1.0      
    ##  1st Qu.: 0.0      Unemployed        : 153409   1st Qu.:1.0      
    ##  Median : 0.0      Not in labor force:1951836   Median :2.0      
    ##  Mean   : 1.2      NA's              :1179865   Mean   :1.6      
    ##  3rd Qu.: 0.0                                   3rd Qu.:2.0      
    ##  Max.   :64.0                                   Max.   :2.0      
    ##  NA's   :2969741                                NA's   :1179865  
    ##       OCC          WKSWORK1        WKSWORK2          UHRSWORK      
    ##  Min.   :   0   Min.   : 0.00   Min.   :1.0       Min.   : 1.0     
    ##  1st Qu.:   0   1st Qu.: 0.00   1st Qu.:5.0       1st Qu.:35.0     
    ##  Median :1040   Median :10.00   Median :6.0       Median :40.0     
    ##  Mean   :2571   Mean   :23.75   Mean   :5.1       Mean   :38.5     
    ##  3rd Qu.:4720   3rd Qu.:52.00   3rd Qu.:6.0       3rd Qu.:43.0     
    ##  Max.   :9920   Max.   :52.00   Max.   :6.0       Max.   :99.0     
    ##                                 NA's   :2931308   NA's   :2931308  
    ##  AVAILBLE           INCTOT           INCWAGE           FTOTINC       
    ##  2   :  48260   Min.   : -19998   Min.   :     0    Min.   : -39996  
    ##  3   : 162891   1st Qu.:   7900   1st Qu.:     0    1st Qu.:  32900  
    ##  4   : 281350   Median :  24000   Median : 10000    Median :  63600  
    ##  5   :4536928   Mean   :  39299   Mean   : 28426    Mean   :  88264  
    ##  NA's:1179865   3rd Qu.:  50000   3rd Qu.: 40000    3rd Qu.: 110000  
    ##                 Max.   :1629000   Max.   :717000    Max.   :2907600  
    ##                 NA's   :1097165   NA's   :1179865   NA's   :241100   
    ##     POVERTY         TRANTIME      
    ##  Min.   :  0.0   Min.   :  1      
    ##  1st Qu.:171.0   1st Qu.: 10      
    ##  Median :332.0   Median : 20      
    ##  Mean   :315.2   Mean   : 27      
    ##  3rd Qu.:501.0   3rd Qu.: 30      
    ##  Max.   :501.0   Max.   :200      
    ##                  NA's   :3503584

``` r
attach(newdata)
use_var<-(YEAR=2019)&(AGE>=25)&(AGE<=65)
dat_use1<-subset(newdata,use_var)
```

``` r
part_time <- as.numeric(dat_use1$UHRSWORK<35)
part_time<-is.na(part_time)
 part_time<-as.factor(part_time)

full_time <-as.numeric(dat_use1$UHRSWORK<=35)&(dat_use1$UHRSWORK<50)
full_time<-as.factor(full_time)

long_time<-as.numeric(dat_use1$UHRSWORK<=50)
long_time<-as.factor(long_time)
```

``` r
Model1_ft<-glm(full_time~AGE + I(AGE^2) +SEX+NFAMS+NCHLT5+NCHILD+HISPAN+RACAMIND+RACASIAN+RACBLK+RACOTHER+RACWHT+educ_nohs+educ_hs+educ_smcoll+educ_bach+educ_as+educ_adv+MARST,family = binomial,(data=dat_use1))
summary(Model1_ft)
```

    ## 
    ## Call:
    ## glm(formula = full_time ~ AGE + I(AGE^2) + SEX + NFAMS + NCHLT5 + 
    ##     NCHILD + HISPAN + RACAMIND + RACASIAN + RACBLK + RACOTHER + 
    ##     RACWHT + educ_nohs + educ_hs + educ_smcoll + educ_bach + 
    ##     educ_as + educ_adv + MARST, family = binomial, data = (data = dat_use1))
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -1.6863  -0.7348  -0.5066  -0.4093   2.4938  
    ## 
    ## Coefficients:
    ##                              Estimate Std. Error  z value Pr(>|z|)    
    ## (Intercept)                -4.079e-01  7.947e-02   -5.132 2.86e-07 ***
    ## AGE                        -1.395e-01  1.291e-03 -107.998  < 2e-16 ***
    ## I(AGE^2)                    1.721e-03  1.427e-05  120.657  < 2e-16 ***
    ## SEXfemale                   1.164e+00  3.436e-03  338.588  < 2e-16 ***
    ## NFAMS                       6.438e-02  3.931e-03   16.378  < 2e-16 ***
    ## NCHLT5                      5.966e-02  4.131e-03   14.442  < 2e-16 ***
    ## NCHILD                      9.276e-02  1.718e-03   53.985  < 2e-16 ***
    ## HISPAN                     -2.135e-02  2.326e-03   -9.179  < 2e-16 ***
    ## RACAMIND                    1.715e-01  1.437e-02   11.938  < 2e-16 ***
    ## RACASIAN                    1.329e-01  1.278e-02   10.401  < 2e-16 ***
    ## RACBLK                      9.263e-02  1.256e-02    7.376 1.64e-13 ***
    ## RACOTHER                    9.391e-02  1.415e-02    6.638 3.19e-11 ***
    ## RACWHT                      2.265e-01  1.201e-02   18.865  < 2e-16 ***
    ## educ_nohs                   1.442e-01  3.493e-02    4.129 3.64e-05 ***
    ## educ_hs                    -1.011e-01  3.456e-02   -2.926  0.00344 ** 
    ## educ_smcoll                -1.564e-01  3.461e-02   -4.518 6.23e-06 ***
    ## educ_bach                   1.007e-01  5.754e-03   17.506  < 2e-16 ***
    ## educ_as                    -2.174e-01  3.482e-02   -6.244 4.27e-10 ***
    ## educ_adv                   -4.788e-01  3.476e-02  -13.774  < 2e-16 ***
    ## MARSTMarried,spouse absent  1.771e-01  1.200e-02   14.762  < 2e-16 ***
    ## MARSTSeparaate              1.011e-01  1.096e-02    9.225  < 2e-16 ***
    ## MARSTdivorced              -1.525e-01  5.228e-03  -29.169  < 2e-16 ***
    ## MARSTwidowed                2.262e-03  1.147e-02    0.197  0.84370    
    ## MARSTnever married/single   2.522e-01  4.823e-03   52.300  < 2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for binomial family taken to be 1)
    ## 
    ##     Null deviance: 2558649  on 2592107  degrees of freedom
    ## Residual deviance: 2403311  on 2592084  degrees of freedom
    ##   (707405 observations deleted due to missingness)
    ## AIC: 2403359
    ## 
    ## Number of Fisher Scoring iterations: 4

``` r
Model2_pt<-glm(part_time~AGE + I(AGE^2) +SEX+NFAMS+NCHLT5+NCHILD+HISPAN+RACAMIND+RACASIAN+RACBLK+RACOTHER+RACWHT+educ_nohs+educ_hs+educ_smcoll+educ_bach+educ_as+educ_adv+MARST,family = binomial,(data=dat_use1))
summary(Model2_pt)
```

    ## 
    ## Call:
    ## glm(formula = part_time ~ AGE + I(AGE^2) + SEX + NFAMS + NCHLT5 + 
    ##     NCHILD + HISPAN + RACAMIND + RACASIAN + RACBLK + RACOTHER + 
    ##     RACWHT + educ_nohs + educ_hs + educ_smcoll + educ_bach + 
    ##     educ_as + educ_adv + MARST, family = binomial, data = (data = dat_use1))
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -2.0997  -0.6740  -0.5002  -0.3275   2.8235  
    ## 
    ## Coefficients:
    ##                              Estimate Std. Error  z value Pr(>|z|)    
    ## (Intercept)                 0.5009783  0.0695003    7.208 5.67e-13 ***
    ## AGE                        -0.1475392  0.0011525 -128.019  < 2e-16 ***
    ## I(AGE^2)                    0.0021473  0.0000124  173.194  < 2e-16 ***
    ## SEXfemale                   0.7280268  0.0030270  240.508  < 2e-16 ***
    ## NFAMS                      -0.0675786  0.0039106  -17.281  < 2e-16 ***
    ## NCHLT5                      0.3887253  0.0039625   98.102  < 2e-16 ***
    ## NCHILD                     -0.0274958  0.0016530  -16.633  < 2e-16 ***
    ## HISPAN                     -0.0219298  0.0021245  -10.322  < 2e-16 ***
    ## RACAMIND                    0.3852242  0.0118457   32.520  < 2e-16 ***
    ## RACASIAN                    0.1431116  0.0117267   12.204  < 2e-16 ***
    ## RACBLK                      0.1878489  0.0112318   16.725  < 2e-16 ***
    ## RACOTHER                   -0.1217869  0.0127004   -9.589  < 2e-16 ***
    ## RACWHT                     -0.0825186  0.0108237   -7.624 2.46e-14 ***
    ## educ_nohs                   0.1376291  0.0236674    5.815 6.06e-09 ***
    ## educ_hs                    -0.6055949  0.0234678  -25.805  < 2e-16 ***
    ## educ_smcoll                -0.9808451  0.0235699  -41.614  < 2e-16 ***
    ## educ_bach                   0.3530568  0.0063737   55.393  < 2e-16 ***
    ## educ_as                    -1.2488389  0.0239308  -52.186  < 2e-16 ***
    ## educ_adv                   -1.7726011  0.0239506  -74.011  < 2e-16 ***
    ## MARSTMarried,spouse absent  0.5922170  0.0094722   62.521  < 2e-16 ***
    ## MARSTSeparaate              0.2618371  0.0093244   28.081  < 2e-16 ***
    ## MARSTdivorced               0.0243889  0.0045305    5.383 7.31e-08 ***
    ## MARSTwidowed                0.2648205  0.0085757   30.880  < 2e-16 ***
    ## MARSTnever married/single   0.4586492  0.0043808  104.695  < 2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for binomial family taken to be 1)
    ## 
    ##     Null deviance: 3319305  on 3264137  degrees of freedom
    ## Residual deviance: 2944675  on 3264114  degrees of freedom
    ##   (35375 observations deleted due to missingness)
    ## AIC: 2944723
    ## 
    ## Number of Fisher Scoring iterations: 5

``` r
Model3_lt<-glm(long_time~AGE + I(AGE^2) +SEX+NFAMS+NCHLT5+NCHILD+HISPAN+RACAMIND+RACASIAN+RACBLK+RACOTHER+RACWHT+educ_nohs+educ_hs+educ_smcoll+educ_bach+educ_as+educ_adv+MARST,family = binomial,(data=dat_use1))
summary(Model3_lt)
```

    ## 
    ## Call:
    ## glm(formula = long_time ~ AGE + I(AGE^2) + SEX + NFAMS + NCHLT5 + 
    ##     NCHILD + HISPAN + RACAMIND + RACASIAN + RACBLK + RACOTHER + 
    ##     RACWHT + educ_nohs + educ_hs + educ_smcoll + educ_bach + 
    ##     educ_as + educ_adv + MARST, family = binomial, data = (data = dat_use1))
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -2.8314   0.3216   0.3857   0.5511   0.8084  
    ## 
    ## Coefficients:
    ##                              Estimate Std. Error z value Pr(>|z|)    
    ## (Intercept)                 4.329e+00  1.080e-01  40.092  < 2e-16 ***
    ## AGE                        -8.330e-02  1.761e-03 -47.304  < 2e-16 ***
    ## I(AGE^2)                    9.368e-04  1.946e-05  48.135  < 2e-16 ***
    ## SEXfemale                   1.064e+00  4.595e-03 231.616  < 2e-16 ***
    ## NFAMS                       2.565e-02  5.603e-03   4.578 4.69e-06 ***
    ## NCHLT5                      1.338e-02  5.059e-03   2.644 0.008187 ** 
    ## NCHILD                     -6.309e-03  2.164e-03  -2.916 0.003551 ** 
    ## HISPAN                      8.191e-02  3.257e-03  25.151  < 2e-16 ***
    ## RACAMIND                   -1.510e-01  1.895e-02  -7.968 1.61e-15 ***
    ## RACASIAN                    4.260e-02  1.704e-02   2.500 0.012430 *  
    ## RACBLK                     -8.083e-04  1.700e-02  -0.048 0.962083    
    ## RACOTHER                   -9.642e-02  1.909e-02  -5.052 4.37e-07 ***
    ## RACWHT                     -2.382e-01  1.611e-02 -14.780  < 2e-16 ***
    ## educ_nohs                  -1.238e-01  5.019e-02  -2.466 0.013660 *  
    ## educ_hs                    -1.537e-01  4.965e-02  -3.096 0.001961 ** 
    ## educ_smcoll                -2.505e-01  4.971e-02  -5.040 4.65e-07 ***
    ## educ_bach                   3.380e-01  6.462e-03  52.306  < 2e-16 ***
    ## educ_as                    -1.687e-01  5.001e-02  -3.373 0.000742 ***
    ## educ_adv                   -6.578e-01  4.975e-02 -13.220  < 2e-16 ***
    ## MARSTMarried,spouse absent -6.271e-02  1.512e-02  -4.149 3.34e-05 ***
    ## MARSTSeparaate              5.594e-02  1.572e-02   3.558 0.000373 ***
    ## MARSTdivorced               5.555e-03  6.722e-03   0.826 0.408559    
    ## MARSTwidowed                1.159e-01  1.974e-02   5.874 4.26e-09 ***
    ## MARSTnever married/single   2.084e-01  6.522e-03  31.951  < 2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for binomial family taken to be 1)
    ## 
    ##     Null deviance: 1744636  on 2592107  degrees of freedom
    ## Residual deviance: 1669120  on 2592084  degrees of freedom
    ##   (707405 observations deleted due to missingness)
    ## AIC: 1669168
    ## 
    ## Number of Fisher Scoring iterations: 5

``` r
require(stargazer)
```

    ## Loading required package: stargazer

    ## 
    ## Please cite as:

    ##  Hlavac, Marek (2018). stargazer: Well-Formatted Regression and Summary Statistics Tables.

    ##  R package version 5.2.2. https://CRAN.R-project.org/package=stargazer

``` r
stargazer(Model2_pt, Model1_ft, Model3_lt,type="text")
```

    ## 
    ## ======================================================================
    ##                                        Dependent variable:            
    ##                            -------------------------------------------
    ##                              part_time      full_time      long_time  
    ##                                 (1)            (2)            (3)     
    ## ----------------------------------------------------------------------
    ## AGE                          -0.148***      -0.139***      -0.083***  
    ##                               (0.001)        (0.001)        (0.002)   
    ##                                                                       
    ## I(AGE2)                       0.002***       0.002***      0.001***   
    ##                              (0.00001)      (0.00001)      (0.00002)  
    ##                                                                       
    ## SEXfemale                     0.728***       1.164***      1.064***   
    ##                               (0.003)        (0.003)        (0.005)   
    ##                                                                       
    ## NFAMS                        -0.068***       0.064***      0.026***   
    ##                               (0.004)        (0.004)        (0.006)   
    ##                                                                       
    ## NCHLT5                        0.389***       0.060***      0.013***   
    ##                               (0.004)        (0.004)        (0.005)   
    ##                                                                       
    ## NCHILD                       -0.027***       0.093***      -0.006***  
    ##                               (0.002)        (0.002)        (0.002)   
    ##                                                                       
    ## HISPAN                       -0.022***      -0.021***      0.082***   
    ##                               (0.002)        (0.002)        (0.003)   
    ##                                                                       
    ## RACAMIND                      0.385***       0.171***      -0.151***  
    ##                               (0.012)        (0.014)        (0.019)   
    ##                                                                       
    ## RACASIAN                      0.143***       0.133***       0.043**   
    ##                               (0.012)        (0.013)        (0.017)   
    ##                                                                       
    ## RACBLK                        0.188***       0.093***       -0.001    
    ##                               (0.011)        (0.013)        (0.017)   
    ##                                                                       
    ## RACOTHER                     -0.122***       0.094***      -0.096***  
    ##                               (0.013)        (0.014)        (0.019)   
    ##                                                                       
    ## RACWHT                       -0.083***       0.227***      -0.238***  
    ##                               (0.011)        (0.012)        (0.016)   
    ##                                                                       
    ## educ_nohs                     0.138***       0.144***      -0.124**   
    ##                               (0.024)        (0.035)        (0.050)   
    ##                                                                       
    ## educ_hs                      -0.606***      -0.101***      -0.154***  
    ##                               (0.023)        (0.035)        (0.050)   
    ##                                                                       
    ## educ_smcoll                  -0.981***      -0.156***      -0.251***  
    ##                               (0.024)        (0.035)        (0.050)   
    ##                                                                       
    ## educ_bach                     0.353***       0.101***      0.338***   
    ##                               (0.006)        (0.006)        (0.006)   
    ##                                                                       
    ## educ_as                      -1.249***      -0.217***      -0.169***  
    ##                               (0.024)        (0.035)        (0.050)   
    ##                                                                       
    ## educ_adv                     -1.773***      -0.479***      -0.658***  
    ##                               (0.024)        (0.035)        (0.050)   
    ##                                                                       
    ## MARSTMarried,spouse absent    0.592***       0.177***      -0.063***  
    ##                               (0.009)        (0.012)        (0.015)   
    ##                                                                       
    ## MARSTSeparaate                0.262***       0.101***      0.056***   
    ##                               (0.009)        (0.011)        (0.016)   
    ##                                                                       
    ## MARSTdivorced                 0.024***      -0.152***        0.006    
    ##                               (0.005)        (0.005)        (0.007)   
    ##                                                                       
    ## MARSTwidowed                  0.265***        0.002        0.116***   
    ##                               (0.009)        (0.011)        (0.020)   
    ##                                                                       
    ## MARSTnever married/single     0.459***       0.252***      0.208***   
    ##                               (0.004)        (0.005)        (0.007)   
    ##                                                                       
    ## Constant                      0.501***      -0.408***      4.329***   
    ##                               (0.070)        (0.079)        (0.108)   
    ##                                                                       
    ## ----------------------------------------------------------------------
    ## Observations                 3,264,138      2,592,108      2,592,108  
    ## Log Likelihood             -1,472,338.000 -1,201,655.000 -834,560.000 
    ## Akaike Inf. Crit.          2,944,723.000  2,403,359.000  1,669,168.000
    ## ======================================================================
    ## Note:                                      *p<0.1; **p<0.05; ***p<0.01

``` r
Model4_pt<-glm(part_time~AGE + I(AGE^2) +SEX+female*NFAMS+female*NCHLT5+NCHILD*female+MARST:female,family = binomial,(data=dat_use1))
summary(Model4_pt)
```

    ## 
    ## Call:
    ## glm(formula = part_time ~ AGE + I(AGE^2) + SEX + female * NFAMS + 
    ##     female * NCHLT5 + NCHILD * female + MARST:female, family = binomial, 
    ##     data = (data = dat_use1))
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -2.2795  -0.7126  -0.5515  -0.2796   3.8775  
    ## 
    ## Coefficients: (1 not defined because of singularities)
    ##                                     Estimate Std. Error  z value Pr(>|z|)    
    ## (Intercept)                        6.985e-01  2.559e-02   27.299   <2e-16 ***
    ## AGE                               -1.517e-01  1.124e-03 -134.920   <2e-16 ***
    ## I(AGE^2)                           2.137e-03  1.212e-05  176.356   <2e-16 ***
    ## SEXfemale                          1.069e-01  8.489e-03   12.587   <2e-16 ***
    ## female                                    NA         NA       NA       NA    
    ## NFAMS                             -5.356e-03  5.001e-03   -1.071    0.284    
    ## NCHLT5                            -2.639e-01  1.023e-02  -25.807   <2e-16 ***
    ## NCHILD                            -4.798e-01  3.297e-03 -145.520   <2e-16 ***
    ## female:NFAMS                       9.062e-02  7.057e-03   12.842   <2e-16 ***
    ## female:NCHLT5                      6.539e-01  1.090e-02   59.967   <2e-16 ***
    ## female:NCHILD                      6.188e-01  3.707e-03  166.918   <2e-16 ***
    ## female:MARSTMarried,spouse absent  3.184e-01  1.301e-02   24.474   <2e-16 ***
    ## female:MARSTSeparaate              1.191e-01  1.128e-02   10.564   <2e-16 ***
    ## female:MARSTdivorced              -3.394e-01  5.743e-03  -59.100   <2e-16 ***
    ## female:MARSTwidowed                2.710e-01  9.264e-03   29.257   <2e-16 ***
    ## female:MARSTnever married/single  -4.900e-02  5.528e-03   -8.864   <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for binomial family taken to be 1)
    ## 
    ##     Null deviance: 3378501  on 3299512  degrees of freedom
    ## Residual deviance: 3094682  on 3299498  degrees of freedom
    ## AIC: 3094712
    ## 
    ## Number of Fisher Scoring iterations: 6

``` r
exp<-(Model4_pt$coefficients)
```

# OLS 2016&2019 regression with domographic factors and household factors

``` r
model5<-lm(log1p(INCWAGE)~AGE + I(AGE^2) +SEX+female*HISPAN+female*RACAMIND+female*RACASIAN+female*RACBLK+female*RACOTHER+female*RACWHT, data=dat_use1)
summary(model5)
```

    ## 
    ## Call:
    ## lm(formula = log1p(INCWAGE) ~ AGE + I(AGE^2) + SEX + female * 
    ##     HISPAN + female * RACAMIND + female * RACASIAN + female * 
    ##     RACBLK + female * RACOTHER + female * RACWHT, data = dat_use1)
    ## 
    ## Residuals:
    ##     Min      1Q  Median      3Q     Max 
    ## -10.278  -4.621   1.890   3.030  10.162 
    ## 
    ## Coefficients: (1 not defined because of singularities)
    ##                   Estimate Std. Error  t value Pr(>|t|)    
    ## (Intercept)      3.046e+00  1.540e-01   19.777   <2e-16 ***
    ## AGE              3.771e-01  1.830e-03  206.061   <2e-16 ***
    ## I(AGE^2)        -4.963e-03  2.014e-05 -246.468   <2e-16 ***
    ## SEXfemale       -2.280e+00  2.060e-01  -11.071   <2e-16 ***
    ## female                  NA         NA       NA       NA    
    ## HISPAN          -6.553e-02  5.031e-03  -13.024   <2e-16 ***
    ## RACAMIND        -1.259e+00  3.137e-02  -40.136   <2e-16 ***
    ## RACASIAN         8.239e-01  2.867e-02   28.737   <2e-16 ***
    ## RACBLK          -1.242e+00  2.813e-02  -44.132   <2e-16 ***
    ## RACOTHER        -9.753e-03  3.101e-02   -0.315    0.753    
    ## RACWHT           4.654e-01  2.695e-02   17.267   <2e-16 ***
    ## female:HISPAN   -1.023e-01  6.982e-03  -14.645   <2e-16 ***
    ## female:RACAMIND  5.740e-01  4.377e-02   13.116   <2e-16 ***
    ## female:RACASIAN -5.471e-01  3.972e-02  -13.775   <2e-16 ***
    ## female:RACBLK    1.594e+00  3.900e-02   40.867   <2e-16 ***
    ## female:RACOTHER -4.389e-01  4.340e-02  -10.113   <2e-16 ***
    ## female:RACWHT   -5.749e-02  3.743e-02   -1.536    0.125    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 4.496 on 3299497 degrees of freedom
    ## Multiple R-squared:  0.07011,    Adjusted R-squared:  0.07011 
    ## F-statistic: 1.659e+04 on 15 and 3299497 DF,  p-value: < 2.2e-16

\#OLS REGRESSION WITH SOME INTERACTIONS WITH FEMALE

``` r
model6<-lm(log1p(INCWAGE)~AGE + I(AGE^2) +SEX+NFAMS+female*NCHLT5+female*NCHILD+female*HISPAN+female*RACAMIND+female*RACASIAN+female*RACBLK+female*RACOTHER+female*RACWHT+female*educ_nohs+female*educ_hs+female*educ_smcoll+female*educ_bach+female*educ_as+female*educ_adv+female*MARST+female*UHRSWORK, data=dat_use1)
summary(model6)
```

    ## 
    ## Call:
    ## lm(formula = log1p(INCWAGE) ~ AGE + I(AGE^2) + SEX + NFAMS + 
    ##     female * NCHLT5 + female * NCHILD + female * HISPAN + female * 
    ##     RACAMIND + female * RACASIAN + female * RACBLK + female * 
    ##     RACOTHER + female * RACWHT + female * educ_nohs + female * 
    ##     educ_hs + female * educ_smcoll + female * educ_bach + female * 
    ##     educ_as + female * educ_adv + female * MARST + female * UHRSWORK, 
    ##     data = dat_use1)
    ## 
    ## Residuals:
    ##      Min       1Q   Median       3Q      Max 
    ## -14.1021   0.1089   0.6856   1.1521   6.3167 
    ## 
    ## Coefficients: (1 not defined because of singularities)
    ##                                     Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                        7.632e+00  1.112e-01  68.614  < 2e-16 ***
    ## AGE                                2.945e-02  1.356e-03  21.711  < 2e-16 ***
    ## I(AGE^2)                          -4.243e-04  1.506e-05 -28.177  < 2e-16 ***
    ## SEXfemale                         -1.477e+00  1.571e-01  -9.405  < 2e-16 ***
    ## NFAMS                             -2.040e-02  4.187e-03  -4.874 1.10e-06 ***
    ## female                                    NA         NA      NA       NA    
    ## NCHLT5                             5.908e-03  5.423e-03   1.089  0.27594    
    ## NCHILD                             2.479e-02  2.417e-03  10.258  < 2e-16 ***
    ## HISPAN                             1.448e-02  3.254e-03   4.451 8.55e-06 ***
    ## RACAMIND                          -2.075e-01  2.136e-02  -9.716  < 2e-16 ***
    ## RACASIAN                           7.841e-02  1.871e-02   4.190 2.78e-05 ***
    ## RACBLK                             5.021e-02  1.862e-02   2.697  0.00699 ** 
    ## RACOTHER                          -2.011e-02  2.032e-02  -0.990  0.32225    
    ## RACWHT                            -5.136e-02  1.771e-02  -2.901  0.00372 ** 
    ## educ_nohs                         -1.069e-01  4.518e-02  -2.367  0.01796 *  
    ## educ_hs                            4.623e-01  4.466e-02  10.353  < 2e-16 ***
    ## educ_smcoll                        7.584e-01  4.477e-02  16.940  < 2e-16 ***
    ## educ_bach                         -2.632e-01  7.972e-03 -33.011  < 2e-16 ***
    ## educ_as                            9.455e-01  4.519e-02  20.924  < 2e-16 ***
    ## educ_adv                           1.580e+00  4.496e-02  35.140  < 2e-16 ***
    ## MARSTMarried,spouse absent        -2.696e-01  1.649e-02 -16.347  < 2e-16 ***
    ## MARSTSeparaate                    -1.900e-01  1.807e-02 -10.514  < 2e-16 ***
    ## MARSTdivorced                     -2.441e-01  7.949e-03 -30.708  < 2e-16 ***
    ## MARSTwidowed                      -1.913e-01  2.634e-02  -7.264 3.76e-13 ***
    ## MARSTnever married/single         -2.437e-01  6.629e-03 -36.763  < 2e-16 ***
    ## UHRSWORK                           2.852e-02  2.002e-04 142.490  < 2e-16 ***
    ## female:NCHLT5                     -7.402e-02  7.930e-03  -9.335  < 2e-16 ***
    ## female:NCHILD                     -8.598e-02  3.359e-03 -25.594  < 2e-16 ***
    ## female:HISPAN                     -4.673e-02  4.698e-03  -9.947  < 2e-16 ***
    ## female:RACAMIND                    6.113e-02  3.043e-02   2.009  0.04456 *  
    ## female:RACASIAN                   -3.862e-02  2.657e-02  -1.454  0.14608    
    ## female:RACBLK                      6.933e-02  2.630e-02   2.636  0.00839 ** 
    ## female:RACOTHER                   -8.149e-02  2.934e-02  -2.778  0.00548 ** 
    ## female:RACWHT                     -2.177e-02  2.514e-02  -0.866  0.38650    
    ## female:educ_nohs                   4.232e-01  7.590e-02   5.577 2.45e-08 ***
    ## female:educ_hs                     3.830e-01  7.497e-02   5.108 3.25e-07 ***
    ## female:educ_smcoll                 2.175e-01  7.507e-02   2.898  0.00376 ** 
    ## female:educ_bach                   5.168e-05  1.114e-02   0.005  0.99630    
    ## female:educ_as                     3.408e-01  7.549e-02   4.514 6.36e-06 ***
    ## female:educ_adv                    1.281e-01  7.528e-02   1.701  0.08893 .  
    ## female:MARSTMarried,spouse absent  1.121e-01  2.485e-02   4.512 6.41e-06 ***
    ## female:MARSTSeparaate              2.938e-02  2.374e-02   1.238  0.21583    
    ## female:MARSTdivorced               2.813e-01  1.062e-02  26.480  < 2e-16 ***
    ## female:MARSTwidowed                2.149e-01  3.040e-02   7.070 1.55e-12 ***
    ## female:MARSTnever married/single   2.323e-01  9.073e-03  25.604  < 2e-16 ***
    ## female:UHRSWORK                    3.042e-02  2.865e-04 106.177  < 2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 2.65 on 2592063 degrees of freedom
    ##   (707405 observations deleted due to missingness)
    ## Multiple R-squared:  0.07441,    Adjusted R-squared:  0.0744 
    ## F-statistic:  4736 on 44 and 2592063 DF,  p-value: < 2.2e-16

``` r
computer_Inf_service<-(DEGFIELD==21)
computer_Inf_service<-as.factor(computer_Inf_service)
construction_service<-(DEGFIELD==56)
 construction_service<-as.factor(construction_service)
 educ_admin_teaching<-(DEGFIELD==31)
 educ_admin_teaching<-as.factor(educ_admin_teaching)
 medical_health_scie<-(DEGFIELD==61)
 medical_health_scie<-as.factor(medical_health_scie)
```

``` r
newdata2<-cbind.data.frame(newdata,computer_Inf_service,construction_service,educ_admin_teaching,medical_health_scie)
```

``` r
model7<-lm(log1p(INCWAGE)~female)
summary(model7)
```

    ## 
    ## Call:
    ## lm(formula = log1p(INCWAGE) ~ female)
    ## 
    ## Residuals:
    ##    Min     1Q Median     3Q    Max 
    ## -6.760 -5.662  2.914  4.337  7.821 
    ## 
    ## Coefficients:
    ##              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)  6.760159   0.003219  2099.8   <2e-16 ***
    ## female      -1.098392   0.004475  -245.4   <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 5.015 on 5029427 degrees of freedom
    ##   (1179865 observations deleted due to missingness)
    ## Multiple R-squared:  0.01183,    Adjusted R-squared:  0.01183 
    ## F-statistic: 6.023e+04 on 1 and 5029427 DF,  p-value: < 2.2e-16

``` r
model8<-lm(log1p(INCWAGE)~female+female*RACAMIND+female*RACASIAN+female*RACBLK+female*RACOTHER+female*RACWHT)
summary(model8)
```

    ## 
    ## Call:
    ## lm(formula = log1p(INCWAGE) ~ female + female * RACAMIND + female * 
    ##     RACASIAN + female * RACBLK + female * RACOTHER + female * 
    ##     RACWHT)
    ## 
    ## Residuals:
    ##    Min     1Q Median     3Q    Max 
    ## -8.465 -5.610  2.867  4.338  8.107 
    ## 
    ## Coefficients:
    ##                 Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)      6.06913    0.13098  46.336  < 2e-16 ***
    ## female          -3.07715    0.18240 -16.871  < 2e-16 ***
    ## RACAMIND        -0.65094    0.02869 -22.691  < 2e-16 ***
    ## RACASIAN         0.90712    0.02556  35.494  < 2e-16 ***
    ## RACBLK          -0.79671    0.02491 -31.987  < 2e-16 ***
    ## RACOTHER         0.73826    0.02670  27.646  < 2e-16 ***
    ## RACWHT           0.27621    0.02390  11.557  < 2e-16 ***
    ## female:RACAMIND  0.61127    0.04000  15.281  < 2e-16 ***
    ## female:RACASIAN -0.02712    0.03553  -0.763  0.44530    
    ## female:RACBLK    1.39739    0.03463  40.353  < 2e-16 ***
    ## female:RACOTHER -0.32700    0.03741  -8.741  < 2e-16 ***
    ## female:RACWHT    0.10646    0.03329   3.198  0.00139 ** 
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 5.007 on 5029417 degrees of freedom
    ##   (1179865 observations deleted due to missingness)
    ## Multiple R-squared:  0.01514,    Adjusted R-squared:  0.01514 
    ## F-statistic:  7029 on 11 and 5029417 DF,  p-value: < 2.2e-16

``` r
NNobs<-length(newdata$LABFORCE)
set.seed(12345)
graph_obs<-(runif(NNobs)<0.5)
dat_graph<-subset(newdata,graph_obs)
plot(SEX~DEGFIELD,pch=10,ylim=c(0,1),data=dat_graph,main="SEX", xlab="DEGFIELD",ylab = "SEX",col=c("blue","gray"))
```

![](New_files/figure-gfm/unnamed-chunk-17-1.png)<!-- -->

``` r
NNobs<-length(newdata$SEX)
set.seed(12345)
graph_obs<-(runif(NNobs)<0.5)
dat_graph<-subset(newdata,graph_obs)
plot(SEX~EDUC,pch=10,ylim=c(0,1),data=dat_graph,main="SEX", xlab="EDUC",ylab = "SEX",col=c("blue","gray"))
```

![](New_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

``` 

```
