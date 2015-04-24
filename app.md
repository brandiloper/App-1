Developing Data Products Course Project
===
author: Brandi Loper 
date: Fri Apr 24 12:05:13 2015

Goal  
===
To display the understanding of using Shiny to build an application in the Developin Data Products course in the Data Science Specialization.

Application Description
===
The simple application called Dataset Viewer illustrates the retrieval of datasets in R to use for any analysis you see fit (i.e,descriptive statistics). The application has been developed and can be accessed at the following URL: http://loperbk.shinyapps.io/App-1/

The application allows the user to:
- Select the dataset to be observed
- Input the number of observations to be viewed (default value set at: 10)
        
<small>Note: There is an update button added, so when you change the dataset it does not change until the button is clicked. </small>


Data
===
Here we have one the datasets in R that we used in our application to observe. We are using the function `summary` to get the descriptive statistics of our chosen dataset.

```r
data(women) # load data or call on the dataset with the following function
summary(women)
```

```
     height         weight   
 Min.   :58.0   Min.   :115  
 1st Qu.:61.5   1st Qu.:124  
 Median :65.0   Median :135  
 Mean   :65.0   Mean   :137  
 3rd Qu.:68.5   3rd Qu.:148  
 Max.   :72.0   Max.   :164  
```

Displaying the indicated number of observations
===
Here we are now showing the `n` observations. As noted the default is set to the vale 10, but this can be changed by inputting a different value of choice, by changing `n`. 

```r
head(women, n=10)
```

```
   height weight
1      58    115
2      59    117
3      60    120
4      61    123
5      62    126
6      63    129
7      64    132
8      65    135
9      66    139
10     67    142
```
