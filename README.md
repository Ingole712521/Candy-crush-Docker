# Candy Crush Docker Deployment

This repository contains the source code and deployment instructions for the Candy Crush application using Docker and AWS ECS.

## Prerequisites

Before you begin, make sure you have the following:

- Docker installed on your local machine.
- AWS account with ECS and EC2 instance set up.
- GitHub account with Docker Hub integration.

## GitHub Action Setup

Before running this GitHub Action in your GitHub account, ensure you have the following information available:

1. **DOCKER_USERNAME**: Your Docker username for authentication and pushing Docker images.
2. **AWS_ACCESS_KEY_ID**: The Access Key ID for your AWS account to interact with Amazon Web Services.
3. **AWS_SECRET_ACCESS_KEY**: The Secret Access Key corresponding to your AWS Access Key ID for secure authentication.
4. **AWS_ECR_REPO**: The name of the Amazon Elastic Container Registry (ECR) repository where you intend to push Docker images.
5. **ECR_REPOSITORY**: The name of the repository in Elastic Container Registry where images will be stored.

Having these details handy will streamline the setup process and ensure seamless execution of the GitHub Action.

## Getting Started

Follow these steps to build, run, and deploy the Candy Crush application:

1. **Clone the Repository**: 
   ```bash
   git clone https://github.com/Ingole712521/Candy-crush-Docker.git
   cd Candy-crush-Docker
   ```

2. **Build Docker Image**: 
   ```bash
   docker build -t candy-crush .
   ```

3. **Run Docker Container Locally**: 
   ```bash
   docker run -it -p 3000:3000 candy-crush
   ```

4. **Access React App Locally**: 
   Open your web browser and navigate to [http://localhost:3000](http://localhost:3000) to access the Candy Crush application running locally.

5. **Deploy to AWS ECS**: 
   - Obtain the public IP address of your AWS EC2 instance.
   - Paste the public IP address in your web browser.

## GitHub Actions

This repository is configured with GitHub Actions to automate the build and deployment process. Make sure to set up Docker Hub credentials and AWS IAM credentials as GitHub secrets for the workflows to run successfully.

### Workflows:
- `build-and-deploy.yml`: This workflow builds the Docker image, pushes it to Docker Hub, and deploys it to AWS ECS.

## Docker Hub Configuration

Make sure to configure Docker Hub integration in your GitHub repository and add Docker Hub credentials as GitHub secrets.

## AWS Configuration
Ensure you have an AWS IAM user with the necessary permissions to interact with ECS and EC2. Add the IAM user access key and secret access key as GitHub secrets.
##Image upload on ECR succesfully 
![image](https://github.com/Ingole712521/Candy-crush-Docker/assets/73941735/ef62dd64-3c5f-4eef-bfa1-46a1ddd40c18)

## Video :- 
https://github.com/Ingole712521/Candy-crush-Docker/assets/73941735/5118e468-9681-4dac-bcb0-620e75812450




## AWS ECR images
![image](https://github.com/Ingole712521/Candy-crush-Docker/assets/73941735/6dfa2b87-f0e5-4cfd-be52-0456a84298e1)


