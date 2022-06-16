# Tensorflow Models

The tensorflow models are served from this `models` folder.

The models themselves are not stored in GIT, due to large file size, so they have to be exported on production server manually. 

Example Model can be found here: https://tfhub.dev/google/universal-sentence-encoder-multilingual/3

Before starting the docker container, run the following command to download a single model.

```
cd models
sh download_model.sh
```
This script downloads a pre-specified model and places it into a folder.

The version has to be specified implicitly. For example, if its version 3, the model needs folder named `3`

The Tensorflow API can then be access via REST. 

### Example REST 

Example: `http://109.235.70.27:8501/v1/models/model`

or with curl:

```
curl -d '{"instances": [["the","quick","brown"],["the","lazy","dog"]]}' -X POST http://109.235.70.27:8501/v1/models/model:predict
```
