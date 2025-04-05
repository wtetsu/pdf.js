[Mouse Dictionary](https://github.com/wtetsu/mouse-dictionary)'s built-in PDF viewer.

Forked from [PDF.js](https://github.com/mozilla/pdf.js)

----

```
npm install
npx gulp web
```

Copy required files to the destination directory.

Example:

```sh
DEST_ROOT=/path/to/mouse-dictionary/static/pdf/options/pdf

rm -rf $DEST_ROOT/build
rm -rf $DEST_ROOT/web

mkdir -p $DEST_ROOT/build
mkdir -p $DEST_ROOT/web

echo https://github.com/wtetsu/pdf.js/tree/`git branch --show-current`  > $DEST_ROOT/BUILDINFO
echo "`git branch --show-current`(`git rev-parse HEAD`)"               >> $DEST_ROOT/BUILDINFO

cp LICENSE                              $DEST_ROOT
cp build/generic/build/pdf.mjs          $DEST_ROOT/build/
cp build/generic/build/pdf.worker.mjs   $DEST_ROOT/build/
cp -r build/generic/web/cmaps           $DEST_ROOT/web/
cp -r build/generic/web/images          $DEST_ROOT/web/
cp -r build/generic/web/locale/en-US    $DEST_ROOT/web/locale/
cp -r build/generic/web/locale/ja       $DEST_ROOT/web/locale/
cp build/generic/web/locale/locale.json $DEST_ROOT/web/locale/
cp build/generic/web/viewer.css         $DEST_ROOT/web/
cp build/generic/web/viewer.html        $DEST_ROOT/web/
cp build/generic/web/viewer.mjs         $DEST_ROOT/web/
```
