FROM dockershelf/python:3.6

RUN pip install seldon-core==0.3.1
RUN pip install awscli==1.16.197

ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY
ARG HOST
ARG PORT
ARG CONTRACT_PATH

COPY . /app

WORKDIR /app

RUN chmod +x script.sh

ENTRYPOINT ["./script.sh"]



