# Hashのようにベクトルを扱う
a <- c(1, "alice")
names(a) <- c("id", "name")     # なんか気持ち悪いけどこれで並びにキーを割り当てることができる
a
a[c("id")]                      # => "1"
a[c("name")]                    # => "alice"
a[c("name", "id")]              # => "alice"     "1"
