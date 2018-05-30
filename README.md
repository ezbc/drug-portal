
# Start Services

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

## Check Status of Functions

Since the functions service is running already use `exec`

```docker-compose exec functions functions status```


