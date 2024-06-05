#!/bin/bash

### Migration
# Following command exports the data from existing server.
# Prerequisites - This script expects mysql-client, mysqlpdump to be present
# AWS Cloud9 environment already has all the prerequisites installed for running these scripts

# Replace the <EC2instancePrivateip> with internal IP address of the EC2 instance (CapstonePOC) created in Phase-2 earlier.
# Provide the password when prompted

mysqldump -h 10.0.0.76 -u nodeapp -p --databases STUDENTS > data.sql

#Following command imports the data into RDS database. Replace <RDSEndpoint> with the RDS Database endpoint you noted after RDS Database created in earlier steps.
#when prompted, enter password you provided during the time of database creation
mysql -h example-university-db-1.cqbjqzo1fume.us-east-1.rds.amazonaws.com -u nodeapp -p < data.sql
