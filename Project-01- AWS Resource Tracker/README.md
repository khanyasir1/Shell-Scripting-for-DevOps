

# 🚀 AWS Resource Tracker – Shell Script project

The **AWS Resource Tracker** is a lightweight, efficient shell script designed to help **DevOps engineers** and **cloud administrators** quickly list, monitor, and audit all active AWS resources in a region.
It leverages the **AWS CLI** to fetch real-time details about running instances, resource types, statuses, and counts across services like **EC2, S3, Lambda, RDS**, and more.

---

## 📌 **Project Highlights**

✅ Provides a real-time snapshot of your AWS infrastructure
✅ Clear visibility into resource usage and availability
✅ Automation-ready output for monitoring and reporting
✅ Compatible with **cron jobs** for scheduled reporting
✅ Helps maintain **cost control**, compliance, and infrastructure health across environments

---

## 🛠️ **Built With**

* **Shell Script (Bash)**
* **AWS CLI**
* `jq` *(optional, for JSON parsing)*

---

## 🎯 **Benefits**

* Simple and easy to use
* Works on any Linux/Unix machine with AWS CLI configured
* Saves time by automating resource tracking
* Enhances visibility and accountability of AWS usage

---

## 📄 **How to Use**

### 1️⃣ **Create the Shell Script**

Open terminal and run:

```bash
vim aws_resource_tracker.sh
```

When `vim` opens, copy and paste the following code:

```bash
#!/bin/bash

##########################################################
#  Author :     Mohammed Yasir Khan
#  Date   :     12/04/2025
#  Project_name: AWS Resource Tracker
#  Description : This script is used to track the AWS resources.
#  Version     : v1
##########################################################

echo "AWS Resource Tracker"
echo "----------------------------"

# EC2 Instances
echo -e "\n  EC2 Instances:"
aws ec2 describe-instances \
  --query 'Reservations[*].Instances[*].[InstanceId,State.Name,InstanceType,AvailabilityZone]' \
  --output table

# S3 Buckets
echo -e "\n  S3 Buckets:"
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
echo -e "\n  EKS Clusters:"
aws eks list-clusters --output table

# CloudFormation Stacks
echo -e "\n  CloudFormation Stacks:"
aws cloudformation describe-stacks --query 'Stacks[*].[StackName,StackStatus]' --output table

# IAM Users
echo -e "\n  IAM Users:"
aws iam list-users --query 'Users[*].[UserName,CreateDate]' --output table

# Route 53 Hosted Zones
echo -e "\n  Route53 Hosted Zones:"
aws route53 list-hosted-zones --query 'HostedZones[*].[Name,Id]' --output table

# CloudWatch Alarms
echo -e "\n  CloudWatch Alarms:"
aws cloudwatch describe-alarms --query 'MetricAlarms[*].[AlarmName,StateValue]' --output table

echo -e "\n✅ Resource scan completed."
```

---

### 2️⃣ **Make the Script Executable**

Run:

```bash
chmod 755 aws_resource_tracker.sh
```

---

### 3️⃣ **Run the Script**

Execute it:

```bash
./aws_resource_tracker.sh
```

---



## ✅ **Sample Output**

![AWS Resource Tracker Output](/Project-01-%20AWS%20Resource%20Tracker/output-image/image.png)

---

## 📌 **Note**

* Ensure you have the **AWS CLI configured** (`aws configure`) with valid credentials and default region.
* You can automate this script using **cron** for periodic checks and reports.

---

**Happy Cloud Monitoring!** ☁️✨
*Feel free to fork this project, customize it, and contribute!*


