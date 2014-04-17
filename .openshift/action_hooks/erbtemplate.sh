#!/bin/bash
file=$1
newFile=$(echo $file | sed "s/\.erb$//g")
erb $file > $newFile
