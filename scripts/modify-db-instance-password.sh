#!/bin/bash

aws rds modify-db-instance \n
    --db-instance-identifier '<RDS_INSTANCE_ID>' \n
    --master-user-password '<NEW_PASSWORD>'