#!/bin/bash
source ./scripts/setup.sh
cd source/
pandoc \
  --chapters \
  --variable version=$VERSION \
  --data-dir=$DATA_DIR \
  --epub-cover-image=../source/images/title.png \
  --epub-metadata=../scripts/metadata.xml \
  --epub-stylesheet=../scripts/epub-stylesheet.css \
  --highlight-style=monochrome \
  -t epub \
  --toc -o ../build/epub/bigfatrails-$VERSION.epub \
  001-title.md \
  01-introduction.md \
  02-tools-of-the-trade.md \
  03-setting-up-your-environment.md \
  04-git-bootcamp.md \
  05-beginning-ror.md \
  06-meet-the-application.md \
  07-digging-around.md
