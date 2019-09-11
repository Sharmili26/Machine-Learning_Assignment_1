#Source: https://support.spatialkey.com/spatialkey-sample-csv-data/

#Load the dataset
read.csv("InsuranceData.csv")

InsuranceData<-read.csv("InsuranceData.csv")

#Descriptive Statistics

#1. Mean
mean(InsuranceData$hu_site_limit)

#2. Median
median(InsuranceData$tiv_2011)

#3. Standard Deviation
sd(InsuranceData$hu_site_limit)

#4. Variance
var(InsuranceData$point_granularity)

#5. Maximum Value
max(InsuranceData$eq_site_limit)

#6. Minimum value
min(InsuranceData$point_latitude)

#7. Range 
range(InsuranceData$point_granularity)

#8. Which Max (Determines the location)
which.max(InsuranceData$fl_site_limit) 

#9. Which Min (Determines the location)
which.min(InsuranceData$tiv_2011)

#Graphical Representation

#1. Histogram
hist(InsuranceData$point_granularity, xlab = "Point_Granularity", main = "Point_Granularity")

#2. Bar Plot
barplot(InsuranceData$fr_site_limit, xlab = "x",ylab = "fr_site_limit")

#3. Scatter Plots
plot.default(InsuranceData$point_longitude,InsuranceData$point_latitude, xlab = "Point_Longitude", ylab = "Point_Latitude")

#Transformation

#1. Square Root Transformation
T_sqrt = sqrt(InsuranceData$point_granularity)
print(head(T_sqrt))
library(rcompanion)
plotNormalHistogram(T_sqrt)

#2. Log Transformation
T_log = log(InsuranceData$tiv_2011)
print(head(T_log))
library(rcompanion)
plotNormalHistogram(T_log)

