FROM dockershelf/python:3.6

RUN pip install seldon-core==0.3.1

ARG HOST
ARG PORT
ARG CONTRACT_PATH

COPY . /app

WORKDIR /app

RUN chmod +x script.sh

ENTRYPOINT ["./script.sh"]



