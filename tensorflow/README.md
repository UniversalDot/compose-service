# Tensorflow Models

The tensorflow models are served from this `models` folder.

The models themselves are not stored in GIT, due to large file size, so they have to be exported on production server manually. 

Example Model can be found here: https://tfhub.dev/google/universal-sentence-encoder-multilingual/3

Once downloaded the file has to unzipped using following command:

```
tar –tzf documents.tar.gz
```

The version has to be specified implicitly. For example, if its version 3, the model needs folder named `3`