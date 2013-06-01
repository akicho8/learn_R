a <- read.csv("sample.csv")
a
a$名前 # => alice bob    (名前縦列)
a$age  # => 20 25        (age縦列)
a[1,]  # => 1 alice  20  (1行目)
a[2,]  # => 2 bob    25  (2行目)

# 縦列の配列をカラム名の変数にする
attach(a)
名前                        # => alice bob
age                         # => 20 25
