# MFDP Price Prediction API Documentation

## Overview

This API provides price prediction services for real estate in Russia and Moscow. It uses machine learning models to predict prices based on various input features.

## FRONTEND PROD URL AND REPO

```
https://mfdp-frontend-martynov-dm.amvera.io
https://github.com/martynov-dm/mfdp-frontend
```

## API PROD URL AND REPO

```
https://mfdp-api-martynov-dm.amvera.io/api
https://github.com/martynov-dm/mfdp-api
```

## Endpoints

### 1. Predict Price for Russia

Predicts the price of real estate in Russia based on input features.

- **URL**: `/predict/ru`
- **Method**: POST
- **Content-Type**: application/json

### 2. Predict Price for Moscow

Predicts the price of real estate in Moscow based on input features.

- **URL**: `/predict/msk`
- **Method**: POST
- **Content-Type**: application/json

## Deployment

The API is deployed as a Docker container. The latest image can be found at:

```
docker.io/martynovdm/mfdp-api:latest
```

## Technical Details

- The API is built using FastAPI framework.
- It uses AutoGluon's TabularPredictor for price predictions.
- The application runs on port 80 inside the container.

For more detailed API documentation, including schema information, visit:
https://mfdp-api-martynov-dm.amvera.io/docs

# Guide: Running MFDP API Docker Image Locally

This guide will walk you through the process of pulling the MFDP API Docker image from DockerHub and running it on your local machine.

## Steps

1. **Pull the Docker image**

   Open a terminal or command prompt and run the following command to pull the latest version of the MFDP API image:

   ```bash
   docker pull martynovdm/mfdp-api:latest
   ```

   This command downloads the image from DockerHub to your local machine.

2. **Run the Docker container**

   After the image is pulled, you can run it using the following command:

   ```bash
   docker run -d -p 8000:80 martynovdm/mfdp-api:latest
   ```

   This command does the following:

   - `-d`: Runs the container in detached mode (in the background)
   - `-p 8000:80`: Maps port 8000 on your host to port 80 in the container
   - `martynovdm/mfdp-api:latest`: Specifies the image to run

3. **Verify the container is running**

   You can check if the container is running with:

   ```bash
   docker ps
   ```

   You should see your container listed in the output.

4. **Access the API**

   The API should now be accessible at `http://localhost:8000/api`. You can test it using a tool like curl or a web browser.

   To access the API documentation, visit:

   ```
   http://localhost:8000/api/docs
   ```
