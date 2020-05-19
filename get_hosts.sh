aws ec2 --region us-east-1 describe-instances --query 'Reservations[*].Instances[*].[Tags[?Key==`Name`].Value|[0],PrivateIpAddress]' --output text | sort | column -t
