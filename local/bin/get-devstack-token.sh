#!/bin/sh
HOST_IP=${HOST_IP:-devstack}
TOKEN=$(curl -s -H 'Content-Type:application/json' -X POST -d '{"auth": {"passwordCredentials": {"username":"admin", "password":"admin"}, "tenantName":"admin"}}' http://$HOST_IP:35357/v2.0/tokens | jq -r .access.token.id)

echo $TOKEN
