#!/usr/bin/env bash
git submodule init
git submodule update

cd services
for dir in *
do
    cd ${dir##*/}
    python3 setup.py sdist && pip3 install dist/*.tar.gz
    cd ..
done
cd ..
