#!/bin/bash

# Variables
IMAGE_NAME=lambda-final
AWS_REGION=us-east-2
ACCOUNT_ID=553490164721
REPOSITORY_NAME=lambda-final

# Construir imagen
docker buildx build --platform linux/amd64 --provenance=false -t $IMAGE_NAME .

# Etiquetar imagen
docker tag $IMAGE_NAME:latest $ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$REPOSITORY_NAME:latest

# Login en ECR
aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin $ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com

# Subir imagen
docker push $ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$REPOSITORY_NAME:latest