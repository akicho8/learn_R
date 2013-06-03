## team <- c("烏山", "太子堂", "豪徳寺")
team <- c("karasuyama", "taisido", "goutokuji")
home_win <- c(3, 7, 8)
away_win <- c(5, 3, 1)
table <- data.frame(team, home_win, away_win)
table

win <- table$home_win + table$away_win
win

jpeg("foo.jpg")
# このでプロットすると foo.jpg に出力する。もっと綺麗にかけんのか
dev.off()

plot(win)                              # 描画するけど○がでるだけでよくわからない
text(win, team, pos=3)                 # なので○の横にラベルを付加

## いまいちなので棒グラフにする
win <- table[c("home_win", "away_win")]
data <- t(as.matrix(win))
barplot(data, names.arg=table$team, legend=c("home", "away"))
