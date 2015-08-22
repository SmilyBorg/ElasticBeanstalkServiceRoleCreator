#!/bin/bash

ROLE=$(aws iam create-role --role-name ElasticBeanstalk-Service-Role --assume-role-policy-document file://trustrelationship.json)
POLICY=$(aws create-policy --policy-name ElasticBeanstalk-Service-Role-Policy --policy-document file://servicerolepolicy.json)

//aws iam attach-role-policy --role-name ElasticBeanstalk-Service-Role --policy-arn arn:aws:iam::aws:policy/service-role/AWSCodeDeployRole