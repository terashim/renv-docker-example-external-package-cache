# 分析スクリプトの例

# プライベートライブラリの復元 -----

# まず renv.lock の内容に沿ってライブラリ renv/library を復元する
renv::restore()

# 分析の実行 -----

# 復元されたライブラリからパッケージを読み込む
library(palmerpenguins)

# 分析コードを実行する

# 例
summary(penguins)
plot(bill_length_mm ~ body_mass_g, penguins,
     main = "ペンギンの体重とくちばしの長さ",
     xlab = "体重 [g]", ylab = "くちばしの長さ [mm]")

# ライブラリの状態を記録 -----

# パッケージのインストールやバージョンアップを行った場合、
#     renv::snapshot()
# でプライベートライブラリの状態を renv.lock に保存できる
