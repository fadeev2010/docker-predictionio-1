This project is derived from sphereio/docker-predictionio


This Dockerfile is for PredictionIO v0.11.0 and Recommendation Engine Template

# PredictionIO docker container
Docker container for PredictionIO-based machine learning services

[PredictionIO](https://prediction.io) is an open-source Machine Learning
server for developers and data scientists to build and deploy predictive
applications in a fraction of the time.

This container uses Apache Spark, HBase and Elasticsearch. The PredictionIO version is the latest stable version 0.11.0.

####Use it interactively for development:
  (slower) build docker image from local Dockerfile: cd to the path containing the Dockerfile, then:
    
    ```Bash
    Build image:
    $ docker build -t recommender .
    ```
    then:
    
    ```Bash
    Run as service:
    $ docker run -d -p 8000:8000 --name predictionio_recommender recommender

    Connect to container for development
    $ docker exec -it predictionio_recommender /bin/bash
    ```