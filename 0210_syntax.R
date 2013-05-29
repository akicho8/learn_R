# -*- coding: utf-8; mode:text -*-
if (TRUE) {1} else if (TRUE) {2} else {3}
i=0; while((i <- i + 1) < 3){cat(i, "")}
repeat{break}                               # 単純な繰り返しとbreak
ifelse(TRUE, 1, 2)                          # 3項演算子と似ているけどまったく同じではないらしい
for(i in 1:3){cat(i, "")}                   # 嫌いな書き方だけど仕方ない
for(i in 1:3){i <- i*2; cat(i, "")}         # 変数はブロックローカル
for(i in 1:3){if (i == 2) next; cat(i, "")} # rubyと同様にnextが使える
