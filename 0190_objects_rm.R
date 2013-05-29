# -*- coding: utf-8 -*-
# 変数一覧の確認と削除
objects()                       # 変数名一覧の確認
var1 <- 1
var2 <- 2
objects()                       # var1, var2 が入っている
rm(var1, var2)                  # var1, var2 を削除
objects()                       # var1, var2 が入ってない
