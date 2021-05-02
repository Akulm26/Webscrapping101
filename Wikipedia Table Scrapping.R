#install.packages("rvest")
library("rvest")

webpage<-read_html('https://en.wikipedia.org/wiki/List_of_amendments_to_the_United_States_Constitution')

tbls <- html_nodes(webpage, "table")

tbls[3]
tbls_ls <- webpage %>%
  html_nodes("table") %>%
  .[3] %>%
  html_table(fill = TRUE)
tbls_ls
df<-as.data.frame(tbls_ls)

