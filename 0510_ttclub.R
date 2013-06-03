# 集計の方法

league <- read.csv("ttclub.csv")
## 以下のCSVは主語がチームではなく試合情報なので勝数順にチームを並べるのが難しい。
## FTHG(=ホームでの得点),FTAG(=遠征したときの得点) となってるだけ。

## Date,HomeTeam,AwayTeam,FTHG,FTAG
## 2013-06-01,太子堂,烏山北,2,1
## 2013-06-02,烏山北,駒沢,1,2
## 2013-06-03,駒沢,太子堂,2,3

wins <- with(league, {
    home_wins <- HomeTeam[FTHG > FTAG]  # , いらない？？ さっぱりわからん
    away_wins <- AwayTeam[FTAG > FTHG]
    sort(table(home_wins) + table(away_wins), decreasing=T)
})
wins
data.frame(wins)
