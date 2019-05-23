#!/usr/bin/env bash

echo "downloading gensen models..."

if [[ ! -f "./nli_large_bothskip_2layer_vocab.pkl" ]]
then
    echo "downloading gensen model nli_large_bothskip_2layer vocab..."
    wget -q https://genseniclr2018.blob.core.windows.net/models/nli_large_bothskip_2layer_vocab.pkl
fi
if [[ ! -f "./nli_large_bothskip_2layer.model" ]]
then
    echo "downloading gensen model nli_large_bothskip_2layer model..."
    wget -q https://genseniclr2018.blob.core.windows.net/models/nli_large_bothskip_2layer.model
fi

if [[ ! -f "./nli_large_bothskip_parse_vocab.pkl" ]]
then
    echo "downloading gensen model nli_large_bothskip_parse_vocab.pkl..."
    wget -q https://genseniclr2018.blob.core.windows.net/models/nli_large_bothskip_parse_vocab.pkl
fi
if [[ ! -f "./nli_large_bothskip_parse.model" ]]
then
    echo "downloading gensen model nli_large_bothskip_parse.model..."
    wget -q https://genseniclr2018.blob.core.windows.net/models/nli_large_bothskip_parse.model
fi

if [[ ! -f "./nli_large_bothskip_vocab.pkl" ]]
then
    echo "downloading gensen model nli_large_bothskip_vocab.pkl..."
    wget -q https://genseniclr2018.blob.core.windows.net/models/nli_large_bothskip_vocab.pkl
fi
if [[ ! -f "./nli_large_bothskip.model" ]]
then
    echo "downloading gensen model nli_large_bothskip.model..."
    wget -q https://genseniclr2018.blob.core.windows.net/models/nli_large_bothskip.model
fi

if [[ ! -f "./nli_large_vocab.pkl" ]]
then
    echo "downloading gensen model nli_large_vocab.pkl..."
    wget -q https://genseniclr2018.blob.core.windows.net/models/nli_large_vocab.pkl
fi
if [[ ! -f "./nli_large.model" ]]
then
    echo "downloading gensen model nli_large.model..."
    wget -q https://genseniclr2018.blob.core.windows.net/models/nli_large.model
fi

echo "done."