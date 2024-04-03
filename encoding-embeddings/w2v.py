import time
from gensim.models import Word2Vec, KeyedVectors

model = KeyedVectors.load_word2vec_format('./GoogleNews-vectors-negative300.bin', binary=True)

vec = model['king'] - model['man'] + model['woman']
print(model.most_similar([vec]))
print()

