# 二次元配列
matrix(1:9, nrow=3, ncol=3)             # デフォルトだと 1,2,3 は縦に展開
matrix(1:9, nrow=3, ncol=3, byrow=TRUE) # 横展開

m <- matrix(1:4, nrow=2, ncol=2)
m
m[1]                                    # 1
m[2]                                    # 2
m[3]                                    # 3 (次の列の最初。つまり1次元配列へのアクセスみたいになっている)

m[1,2]                                  # 1行目の2列目 (y,x) のようなアクセス

matrix(1:81, nrow=9, ncol=9)[2:3,1:2]   # 2-3行目から1:2列目

m <- matrix(1:4, nrow=2, ncol=2)
dimnames(m) <- list(c("a", "b"), c("x", "y"))
m
#   x y
# a 1 3
# b 2 4
