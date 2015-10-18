#! /usr/bin/env bash

set -e

conda install numpy scipy matplotlib ipython ipython-notebook

cd /home/leon/repos/deepdecoder
mkdir -p build
cd build
cmake ..
make -j 10 create_python_pkg
cd python/package
pip install -e .

cd /home/leon/repos/beras
pip install -e .

pip install cairosvg

