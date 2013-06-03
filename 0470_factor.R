# 名義値と順序値
# 名義値には順序が不要なので普通に factor するだけ
colors <- c("red", "green", "blue")
colors
factor(colors)                          # Levels: blue green red

# 「悪普良」は順序が大切
results <- c("poor", "average", "good")
results
factor(results, order=TRUE, levels=results) # Levels: poor < average < good
