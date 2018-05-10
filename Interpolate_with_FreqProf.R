#####
### Define the locations and names of input/output files
#####
f_global = "/Users/ammii/Downloads/05_16_38_vehicle_global_position_0.csv"
f_attitude = "/Users/ammii/Downloads/05_16_38_vehicle_attitude_0.csv"
f_output = "/Users/ammii/Downloads/interpolate_output.csv"

#####
### Library
#####
#Using R Package FreqProf : https://cran.r-project.org/web/packages/FreqProf/FreqProf.pdf
#install.packages("FreqProf") #uncomment for the first time installation only
library(FreqProf)

#####
### Extract/Transform Data
#####

#load data
data1 <- read.table(f_global,sep=",", header=TRUE)
data2 <- read.table(f_attitude,sep=",", header=TRUE)

#intersect 2 datasets
df_intersec <- merge(data1, data2, by ="timestamp")

#slice global data
my_df1 <- data.frame(
  data1["timestamp"],
  data1["lat"],
  data1["lon"],
  data1["alt"])

#slice attitude data
my_df2 <- data.frame(
  data2["timestamp"])

#slice df_intersec (for finding diff data)
my_df1 <- data.frame(
  df_intersec["timestamp"],
  df_intersec["lat"],
  df_intersec["lon"],
  df_intersec["alt"])

#find diff data btw global and attitude data
df_diff <- setdiff(my_df2,my_df1["timestamp"])

#set dummy dataframe with NA value
my_df2 <- data.frame(
  df_diff["timestamp"],
  lat = NA,
  lon = NA,
  alt = NA)

#merge all data (df_intersec + df_diff)
df_merge <- rbind(my_df1,my_df2)

#sort dataframe by timestamp
df_merge_sort <- df_merge[order(df_merge$timestamp),]

#reset rownum
rownames(df_merge_sort) <- NULL

#####
### Calculate the missing value with interpolation
#####

#Interpolate multiple columns of a data.frame with method = linear
df_approx <- approxm(df_merge_sort, n=length(df_merge_sort$timestamp),method = "linear")

#remove unused data/values from the global environment
rm(data1, data2, my_df1, my_df2, df_intersec, df_diff, df_merge, df_merge_sort, f_attitude, f_global)

#export as csv
write.csv(file=f_output, x=df_approx, row.names = FALSE)

