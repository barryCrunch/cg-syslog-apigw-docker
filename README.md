# Cloudgenix API Gateway Docker Container
Based off ebob9's cg-syslog-apigw script, that you can find [here](https://github.com/ebob9/cg-syslog-apigw)

## Installation Steps
1. Pull docker image
```
docker pull mkbarry/cg-syslog-api-gateway
```
2. Load config file. The python script will read a cloudgenix_settings.py file for any configuration
options. I'm running this in K8s so I mount this file as a config map. Examples of the file can be found
in ebob9's repo listed above.
3. Run docker image with the correct command
```
docker run mkbarry/cg-syslog-api-gateway:latest python cg-syslog-apigw.py -S <DESTINATION IP>
```
