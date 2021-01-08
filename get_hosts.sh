#!/bin/bash
read -p "Enter the region: " region
read -p "Enter a search term: " search
if [ -z "$search" ]
then
      aws ec2 describe-instances --query 'Reservations[*].Instances[*].[Tags[?Key==`Name`].Value|[0]]' --region $region --output text | sort > hosts.txt
else
      aws ec2 describe-instances --query 'Reservations[*].Instances[*].[Tags[?Key==`Name`].Value|[0]]' --region $region --output text | grep $search | sort > hosts.txt
fi
