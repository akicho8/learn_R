# -*- coding: utf-8 -*-
# ベクトルから要素を添字で参照 Array#compact
v <- c(3,NA,4)
v                               # => 3 NA 4

v[-1]                           # => NA  4          (どゆこと？)
v[0]                            # => numeric(0)     (どゆこと？)

v[1]                            # => 3
v[2]                            # => NA
v[3]                            # => 4
v[4]                            # => NA

# Array#compact 相当
is.na(v)                        # => FALSE TRUE FALSE
!is.na(v)                       # => TRUE FALSE TRUE
v[!is.na(v)]                    # => 3 4

v[(2:3)]                        # => NA 4
v[-(2:3)]                       # => 3
