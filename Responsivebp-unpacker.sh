#!/bin/bash

ls -v
read -p 'Create and go to... >>> ' newdir

mkdir $newdir

unzip responsive.zip -d $newdir
mv $newdir/template.html $newdir/template$newdir.html
touch $newdir/custom$newdir.css
cd $newdir
