

library(RMariaDB)
localuserpassword <- "1234"


# The connection method below uses a password stored in a variable.  
# To use this set localuserpassword="The password of newspaper_search_results_user" 

storiesDb <- dbConnect(RMariaDB::MariaDB(), user='vittu', password=localuserpassword, dbname='vital', host='localhost')
dbListTables(storiesDb)
x<-"select* from nat;"
data<-dbGetQuery(storiesDb,x)
dbDisconnect(storiesDb)



#

