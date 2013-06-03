# 同じ長さを持つ名前付けされた複数のベクトルからなるリスト？？？
# DBの扱いと逆なのが気持ちわるすぎる。けどこっちの方が便利だからそうなっているんだろう。でもまだ利点を感じてはない。
team <- c("烏山", "太子堂", "豪徳寺")
win <- c(40, 70, 90)
lose <- c(60, 30, 10)
table <- data.frame(team, win, lose)    # ここで変数名がキー名になっている(気持ちわるー)
table
table[c("team", "win")]                 # チーム名と勝数の列だけ取得(このアクセスのしやすさが利点？？？)
table[c("team")]                        # チーム名だけ(こっちは表になってる状態)
table$team                              # チーム名だけ(こっちはベクトル？)
table$team[table$win >= 50]             # 勝数が50以上
table$team[table$win > table$lose]      # 勝ち越し(冗長)
with(table, team[win > lose])           # 勝ち越し(簡潔にかける)

pts <- c(400, 700, 900)                 # ポイントベクトルが別にある
point <- data.frame(team, pts)          # キーと値のペアにする
table <- merge(table, point, by="team") # point 列ができた
with(table, table[order(-pts),])        # ポイント順でソート(どゆこと？？)

# レコードの追加

team <- c("下馬", "駒沢")
win <- c(60, 65)
lose <- c(40, 35)
pts <- c(10, 20)
table2 <- data.frame(team, win, lose, pts)
table3 <- rbind(table, table2)          # 合体
table3

