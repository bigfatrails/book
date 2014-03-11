#!/bin/bash
source ./scripts/setup.sh
cd source/
ebook-convert ../build/epub/bigfatrails-$VERSION.epub ../build/mobi/bigfatrails-$VERSION.mobi
