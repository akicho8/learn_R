# リストは構造体に相当するらしい
a <- list(id=1,name="alice")
a$name                                  # => "alice"
a[["name"]]                             # => "allce"
a[["n"]]                                # => NULL
a[["n", exact=FALSE]]                   # => "alice" (exact=FALSEにするとnがnameにマッチする謎仕様)
