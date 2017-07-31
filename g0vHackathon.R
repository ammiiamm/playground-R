#g0vHackathon
#29July2017
#Prepare file for http://budget.g0v.tw/

#year,code,amount,name,topname,depname,depcat,cat,ref
#2015,proj_no,proj_mny,proj_name,NULL,subdep_name,NULL,typ_name,NULL

library(readr)

#write.csv(iris,"~/Downloads/2558_year_contract.csv")

#clear my_df

#my_df <- data.frame("2015",file4$proj_no)

file2 <- read_csv("~/Desktop/g0v/255712_contract.csv" , n_max=1000, locale = locale(encoding = "ISO-8859-11"))

file4 <- read_csv("~/Desktop/g0v/255812_contract.csv" , n_max=1000, locale = locale(encoding = "ISO-8859-11"))

comparison <- compare(file2$proj_no,file4$proj_no,allowAll=TRUE)

# file4 <- read_csv("~/Desktop/g0v/255812_contract.csv", locale = locale(encoding = "ISO-8859-11"))
# 
# file4 <- rbind(file4,read_csv("~/Desktop/g0v/255810_contract.csv", locale = locale(encoding = "ISO-8859-11")))

 
 my_df2 <- data.frame(year=2014,
                      code=file2$proj_no,
                      amount=file2$proj_mny,
                      name=file2$proj_name,
                      topname="",
                      depname=file2$subdep_name,
                      depcat="",
                      cat=file2$typ_name,
                      ref=""
 )
 
my_df3 <- data.frame(year=2015,
                     code=file4$proj_no,
                     amount=file4$proj_mny,
                     name=file4$proj_name,
                     topname="",
                     depname=file4$subdep_name,
                     depcat="",
                     cat=file4$typ_name,
                     ref=""
)


write.csv(my_df2,"/Users/ammii/Desktop/g0v/2014_thgov_budget.csv", row.names=FALSE)

file3 = file3[!1000,]

write.csv(my_df3,"/Users/ammii/Desktop/g0v/2015_thgov_budget.csv", row.names=FALSE)
