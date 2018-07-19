
# Start Services

## Overview 



## Set Environment

```
CONTAINER_WORKING_DIR=/usr/src/app
GCP_PROJECT_ID=<gcp-project>
GCP_PUBSUB_PORT=<pubsub-port>
```

## Start Services

docker-compose up

## Authenticate with Google Cloud Platform

```docker-compose run gcloud gcloud auth login```



## Functions

Since the functions service is running already use `exec`

```docker-compose exec functions functions status```

Set default application credentials

```docker-compose run gcloud gcloud auth application-default login --no-launch-browser```


