#!/bin/bash
# This function will unzip all the files in the current folder.
# just a for loop for convenience, nothing serious
my_unzip_all() {
    DIR="$PWD"
    for zipfile in "$DIR"/*.zip; do
        if [ -f "$zipfile" ]; then
            unzip "$zipfile" -d "$DIR"

        fi
    done
}
