# Integrating LLMs slides & demos

This is support material for the talk, part of a series I make on machine learning. The goal is to make the subject more understandable and accessible for everybody.

The presentation is mostly me talking and the slides are just supporting titles or animations, not really informative standalone.

To view just open the index.html file.
To edit, change index.md and run make or:
```
pandoc -t revealjs --template revealtemplate.html -s index.md -o index.html
```

Animation are done with [manim](https://github.com/3b1b/manim) and [ManimML](https://github.com/helblazer811/ManimML)

For the demos we use part 1 of ["Under the Yoke"](https://en.wikipedia.org/wiki/Under_the_Yoke) in original cyrillic.

Demos include:

- ./encoding-embeddings
  - examples of Word2Vec - [you need to download the model](https://code.google.com/archive/p/word2vec/)
  - Octave visualisations of words in vector space and their semantic distributions
- ./word2vec.py - creating a Word2Vec encoding model
- ./rag - RAG or prompt engineering with [LlamaIndex](https://docs.llamaindex.ai/en/stable/)
- node text2story.mjs - converts our custom training text in a TinyStories suitable for [llama2.c training](https://github.com/karpathy/llama2.c) and WikiSQL for out of the box fine-tuning of models [with mlx LoRA or QLoRA](https://github.com/ml-explore/mlx-examples/tree/main/lora) or [qlora.py](https://github.com/artidoro/qlora/tree/main)
- data - original & transformed data, a trained model with llama.c, adaptated weights for Mistral-7B-v0.1

