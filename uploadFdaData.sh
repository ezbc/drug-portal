#!/bin/bash

#curl -O https://api.fda.gov/download.json

filenames=$(cat drug-portal-data/fda/download-test.json | grep file | sed 's/"file": "//g' | sed 's/"//g')

for filename in "${filenames[@]}"
do
 `cd drug-portal-data/fda && curl -O ${filename}`
 docker-compose run gcloud gsutil cp drug-portal-data/fda/*.json.zip gs://drug_portal/data/fda/
done

curl -O https://download.open.fda.gov/device/enforcement/device-enforcement-0001-of-0001.json.zip 
curl -O https://download.open.fda.gov/device/classification/device-classification-0001-of-0001.json.zip 
curl -O https://download.open.fda.gov/device/510k/device-510k-0001-of-0001.json.zip 
curl -O https://download.open.fda.gov/device/recall/device-recall-0001-of-0001.json.zip 
curl -O https://download.open.fda.gov/device/registrationlisting/device-registrationlisting-0001-of-0001.json.zip 
curl -O https://download.open.fda.gov/device/pma/device-pma-0001-of-0001.json.zip 
curl -O https://download.open.fda.gov/device/udi/device-udi-0001-of-0017.json.zip 
curl -O https://download.open.fda.gov/device/event/all_other/device-event-0001-of-0001.json.zip

