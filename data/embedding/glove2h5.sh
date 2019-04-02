#!/usr/bin/env bash
echo "downloading glove zip file ..."
# curl -LO 'http://nlp.stanford.edu/data/glove.840B.300d.zip'
wget -q http://nlp.stanford.edu/data/glove.840B.300d.zip
unzip glove.840B.300d.zip
rm glove.840B.300d.zip
echo "done."
python glove2h5.py