FROM tensorflow/serving

COPY /models /models/model/

RUN apt-get update && apt-get install curl -y

# RUN chmod 540 /models/model/dowload-model.sh