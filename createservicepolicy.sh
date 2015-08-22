#!/bin/bash

ROLE=$(aws iam create-role --role-name ElasticBeanstalk-Service-Role --assume-role-policy-document file://trustrelationship.json --output text)
POLICY=$(aws iam create-policy --policy-name ElasticBeanstalk-Service-Role-Policy --policy-document file://servicerolepolicy.json --output text)

aws iam attach-role-policy --role-name ElasticBeanstalk-Service-Role --policy-arn  $(echo $POLICY | awk '{print $2}')

