#!/usr/bin/env bash
echo "downloading gensen model nli_large_bothskip_2layer ..."
wget -q https://genseniclr2018.blob.core.windows.net/models/nli_large_bothskip_2layer_vocab.pkl
wget -q https://genseniclr2018.blob.core.windows.net/models/nli_large_bothskip_2layer.model
echo "downloading gensen model nli_large_bothskip_parse ..."
wget -q https://genseniclr2018.blob.core.windows.net/models/nli_large_bothskip_parse_vocab.pkl
wget -q https://genseniclr2018.blob.core.windows.net/models/nli_large_bothskip_parse.model
echo "downloading gensen model nli_large_bothskip ..."
wget -q https://genseniclr2018.blob.core.windows.net/models/nli_large_bothskip_vocab.pkl
wget -q https://genseniclr2018.blob.core.windows.net/models/nli_large_bothskip.model
echo "downloading gensen model nli_large ..."
wget -q https://genseniclr2018.blob.core.windows.net/models/nli_large_vocab.pkl
wget -q https://genseniclr2018.blob.core.windows.net/models/nli_large.model
echo "done."