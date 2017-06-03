# Instanalizer
[![Build Status](https://travis-ci.org/jakubigla/instanalizer.svg?branch=master)](https://travis-ci.org/jakubigla/instanalizer)


This application will allow you to authenticate against your Instagram account and then analise all your uploaded photos using Amazon Rekognition.

--

## Purpose

The goal of this application is to present my DevOps skills around:
* Docker
    * Compose
    * Microservices architecture
* AWS
    * Elastic Beanstalk with Multi docker containers
    * SQS and SNS
    * CloudWatch
    * Lambda and API Gateway - Serverless stack
    * Amazon Rekognition
    * CloudFront - CDN
    * DynamoDB - session and general storage
    * S3
    
* Programming languages
    * PHP 7.1
    * NodeJS
    * Python
    
* Continuous Integration and Delivery
    * GitLab CI
    * Travis - with stages
    * Jenkins - with Declarative Pipeline
    
* Log aggregation and Monitoring
    * ELK Stack
    * CloudWatch
    * Prometheus and Grafana ecosystem
    
## Development

Clone this repository and then run:
```make setup```

This will:
* Copy dev `.env` file
* Run `composer install` on PHP-based services
* Run `npm install` on UI
* Copy Elastic Beanstalk configuration

Now, build docker containers:
```make build-docker```

And run application
```make run```