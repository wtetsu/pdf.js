#! /bin/sh

gulp web

SRC=build/generic
DEST_ROOT=/c/src/mouse-dictionary/static_pdf
DEST=$DEST_ROOT/options/pdf

mkdir -p $DEST/web
mkdir -p $DEST/web/locale
mkdir -p $DEST/build

echo https://github.com/wtetsu/pdf.js/tree/`git branch --show-current` > $DEST/BUILDINFO
echo "`git branch --show-current`(`git rev-parse HEAD`)" >> $DEST/BUILDINFO

cp LICENSE $DEST

cp $SRC/web/viewer.css $DEST/web
cp $SRC/web/viewer.html $DEST/web
cp $SRC/web/viewer.js $DEST/web
# cp $SRC/web/compressed.tracemonkey-pldi-09.pdf $DEST/web

cp -r $SRC/web/images $DEST/web
cp -r $SRC/web/cmaps $DEST/web

mkdir -p $DEST/web/locale
cp -r $SRC/web/locale/en-US/viewer.properties $DEST/web/locale/locale.properties

cp $SRC/build/pdf.js $DEST/build
cp $SRC/build/pdf.worker.js $DEST/build

