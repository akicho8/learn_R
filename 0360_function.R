# 関数
f <- function(a,b,c=3,d=4){c(a,b,c,d)}
f(1,2)                          # => c(1,2,3,4)
f(1,2,d=9,c=8)                  # => c(1,2,8,9)

f <- function(n){n+1}
f(1)
body(f)                         # 関数の中身を表示
body(f) <- expression(n+2)      # 関数の中身を置き換えられる
f(1)                            # => 3
