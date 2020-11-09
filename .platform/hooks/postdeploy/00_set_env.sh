#!/bin/sh

#Create a copy of the environment variable file
cp /opt/elasticbeanstalk/deployment/env /opt/elasticbeanstalk/deployment/envvars

#Set permissions to the custom_env_var file so this file can be accessed by any user on the instance. You can restrict permissions as per your requirements.
chmod 644 /opt/elasticbeanstalk/deployment/envvars

#Remove duplicate files upon deployment
rm -f /opt/elasticbeanstalk/deployment/*.bak
