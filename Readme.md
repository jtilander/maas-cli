# maas-cli in a docker container

Maas CLI packaged up in a container as an easy to run package.

# Environment

|Variable|Notes |
|--------|------|
|MAAS_URL|The link to the API for maas, e.g. http://maasserver:5240/MAAS|
|MAAS_APIKEY|You api key|

# Volumes

|Volume|Meaning|
|------|-------|
|/root |store logins for maas server|


# Usage

For example, to get all the node information call:

```
docker run --rm -it -e MAAS_URL=http://maas:5240/MAAS MAAS_APIKEY=sample_key jtilander/maas-cli nodes read
```
