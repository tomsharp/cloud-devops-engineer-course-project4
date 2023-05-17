# cloud-devops-engineer-course-project4
Cloud DevOps Engineer Nanodegree Project 3: Operationalize a Machine Learning Microservice API

## CI Status:
[![CircleCI](https://circleci.com/gh/tomsharp/cloud-devops-engineer-course-project4.svg?style=svg)](https://app.circleci.com/pipelines/github/tomsharp/cloud-devops-engineer-course-project4)

## Summary
Deploy an ML Microservice (API) via Docker and Kubernetes. The microservice serves predictions on Boston housing prices.

## Instructions
- To run the app locally, run the following commands:
    ```
    make setup
    make install
    python3 app.py
    ```
- To deploy the app, run the following commands
    ```
    ./scripts/run_docker.sh
    ./scripts/upload_docker.sh
    minikube start
    ./scripts/run_kubernetes.sh
    ```
- To test the app, in another terminal, run the following command to send a prediction to the service:
    ```
    ./scripts/make_predictions.sh
    ```
- Shutdown minikube: 
    ```
    minikube delete
    ```

## Contents
`.circleci/`: Files to run CI/CD on CircleCI
<br>
`model_data/`: Files containing infromation about the model including the model object itself
<br>
`output_txt_files/`: Output of logs from the application's server (for project submission)
<br>
`scripts/`: Scripts to build and test the application
<br>
`app.py`: Py file that contains the actual applciation code 
<br>
`Dockerfile`: Dockerfile for the project to build the application's image
<br>
`Makefile`: Makefile for the project. Useful for setting up the application
<br>
`requirements.txt`: Python requirements for the application. To be used by Docker to install the virtual env for the application