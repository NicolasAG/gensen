#!/usr/bin/env bash

if [[ ! -f "./glove.840B.300d.txt" ]]
then
    echo "downloading glove zip file ..."
    curl -LO 'http://nlp.stanford.edu/data/glove.840B.300d.zip'
    wget -q http://nlp.stanford.edu/data/glove.840B.300d.zip
    unzip glove.840B.300d.zip
    rm glove.840B.300d.zip
    echo "done."
fi

if [[ ! -f "./glove.840B.300d.h5" ]]
then
    python glove2h5.py
fi
