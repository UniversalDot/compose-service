# Shell script that extracts model 

# TODO: Make configurable version and model

mkdir 3

cd 3

curl -L "https://tfhub.dev/google/universal-sentence-encoder-multilingual/3?tf-hub-format=compressed" | tar -zxvC ../3

