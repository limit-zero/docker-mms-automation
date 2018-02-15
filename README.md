# MMS Monitoring Agent
Minimal docker container for running the MMS/MongoDB Cloud Manager Monitoring Agent

## Usage
Specify MMS configuration values by passing them as environment variables prefixed with `MMS_`.

The [Monitoring Agent](https://docs.cloudmanager.mongodb.com/tutorial/install-monitoring-agent-from-archive) documentation requires that at least the `mmsApiKey` and `mmsGroupId` be set, so a minimal configuration could look like this:
```sh
docker run -e MMS_mmsApiKey=MY_API_KEY -e MMS_mmsGroupId=MY_GROUP_ID limit0/mms-monitoring-agent:latest
```
