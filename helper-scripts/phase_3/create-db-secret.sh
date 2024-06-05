#!/bin/bash

# Use following script to create secret in secret manager for accessing your database via the web application
# Replace the values for below placeholders with the actual values you have used to configure the service
#<RDS Endpoint>
#<password>
#<username>
#<dbname>

aws secretsmanager create-secret \
	--name Mydbsecret \
	--description "Database secret for web app" \
	--secret-string "{\"user\":\"nodeapp\",\"password\":\"student12\",\"host\":\"example-university-db-1.cqbjqzo1fume.us-east-1.rds.amazonaws.com\",\"db\":\"STUDENTS\"}"
