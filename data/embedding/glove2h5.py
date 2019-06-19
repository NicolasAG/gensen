"""Convert raw GloVe word vector text file to h5."""
import h5py
import numpy as np
import logging

logging.info("grabbing glove vocab & vectors...")

glove_vectors = [
    line.strip().split() for line in open('glove.840B.300d.txt', 'r', encoding='utf-8')
]

vocab = [''.join(line[:-300]) for line in glove_vectors]
vectors = np.array(
    [[float(val) for val in line[-300:]] for line in glove_vectors]  # TOFIX: process returns ``31 Killed``
).astype(np.float32)
'''
vectors = []
for line in glove_vectors:
    try:
        vectors.append([float(val) for val in line[1:]])
        assert len(vectors[-1]) == 300, line
    except ValueError as e:
        print(e)
        print(line)
        raise e
'''
vocab = '\n'.join(vocab)

logging.info("creating h5py file...")

f = h5py.File('glove.840B.300d.h5', 'w')
f.create_dataset(data=vectors, name='embedding')
f.create_dataset(data=vocab, name='words_flatten')
f.close()

logging.info("done.")
