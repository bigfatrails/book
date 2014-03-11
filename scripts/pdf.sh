#!/bin/bash
source ./scripts/setup.sh
cd source/
pandoc \
  --variable version=$VERSION \
  --chapters \
  --latex-engine=xelatex \
  --data-dir=$DATA_DIR \
  --highlight-style=monochrome \
  --toc -N -o ../build/pdf/bigfatrails-$VERSION.pdf \
  01-introduction.md \
  02-tools-of-the-trade.md \
  03-setting-up-your-environment.md \
  04-git-bootcamp.md \
  05-beginning-ror.md \
  06-meet-the-application.md \
  07-digging-around.md
