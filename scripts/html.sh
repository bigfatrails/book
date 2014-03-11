#!/bin/bash
source ./scripts/setup.sh
cd source/
pandoc \
  --variable version=$VERSION \
  --chapters \
  --data-dir=$DATA_DIR \
  -t html \
  --highlight-style=monochrome \
  --include-in-header=$ROOT_DIR/scripts/style.css \
  --toc -s -N -o ../build/html/index.html \
  01-introduction.md \
  02-tools-of-the-trade.md \
  03-setting-up-your-environment.md \
  04-git-bootcamp.md \
  05-beginning-ror.md \
  06-meet-the-application.md \
  07-digging-around.md
