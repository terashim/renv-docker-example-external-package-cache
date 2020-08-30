FROM rocker/rstudio:4.0.2

# libXt ライブラリと日本語フォント（IPAexフォント）をインストール
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    libxt-dev \
    fonts-ipaexfont \
  && apt-get clean

# RStudio の Global Options 設定
COPY --chown=rstudio:rstudio \
  .config/rstudio/rstudio-prefs.json \
  /home/rstudio/.config/rstudio/rstudio-prefs.json

# renv のパッケージキャッシュを作成
RUN mkdir -p /home/rstudio/.local/share/renv/cache \
  && chown -R rstudio:rstudio /home/rstudio
