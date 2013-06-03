# DBへのアクセス方法

## library(DBI)
library(RMySQL)

con <- dbConnect(MySQL(), host="127.0.0.1", dbname="memoria_production", user="root")

## ~/.my.cnf に以下を書いておけば groups="memo_station" で繋がる
## [memo_station]
## database = memoria_production
## host = 127.0.0.1
## user = root
## password =
## con <- dbConnect(MySQL(), groups="memo_station")

dbGetQuery(con, "select * from articles order by id desc limit 2")
dbDisconnect(con)
