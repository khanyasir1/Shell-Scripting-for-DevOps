#!/bin/bash

##########################################################
#  Author :     Mohammed Yasir Khan                             			  #
#  Date   :     12/0/2025                                       					  #
#  Project_name: AWS Resource Tracker                             		  #
#  Description : this script is used to track the aws resources.   	  #
#  Version     : v1                                               					  #
##########################################################

echo "AWS Resource Tracker"
echo "----------------------------"

# EC2 Instances
echo -e "\n  EC2 Instances:"
aws ec2 describe-instances \
  --query 'Reservations[*].Instances[*].[InstanceId,State.Name,InstanceType,AvailabilityZone]' \
  --output table

# S3 Buckets
echo -e "\n ️ S3 Buckets:"
aws s3 ls

# Lambda Functions
echo -e "\n  Lambda Functions:"
aws lambda list-functions --query 'Functions[*].[FunctionName,Runtime,LastModified]' --output table

# RDS Instances
echo -e "\n  RDS Instances:"
aws rds describe-db-instances \
  --query 'DBInstances[*].[DBInstanceIdentifier,DBInstanceStatus,Engine]' \
  --output table

# EKS Clusters
echo -e "\n ️ EKS Clusters:"
aws eks list-clusters --output table

# CloudFormation Stacks
echo -e "\n️ CloudFormation Stacks:"
aws cloudformation describe-stacks --query 'Stacks[*].[StackName,StackStatus]' --output table

# IAM Users
echo -e "\n IAM Users:"
aws iam list-users --query 'Users[*].[UserName,CreateDate]' --output table

# Route 53 Hosted Zones
echo -e "\n Route53 Hosted Zones:"
aws route53 list-hosted-zones --query 'HostedZones[*].[Name,Id]' --output table

# CloudWatch Alarms
echo -e "\n CloudWatch Alarms:"
aws cloudwatch describe-alarms --query 'MetricAlarms[*].[AlarmName,StateValue]' --output table

echo -e "\n✅ Resource scan completed."