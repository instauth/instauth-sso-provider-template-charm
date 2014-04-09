#!/bin/bash

LOGCMD=$(which juju-log || echo echo)

# Application
APP_NAME="sso-provider"
APP_LONG_NAME="OpenID-Connect Stub Charm"
KNOWN_RELATIONS=auth
PORT=80

base_url() {
    IPADDR=$(unit-get public-address)
    echo http://$(echo $IPADDR:$PORT | sed 's/:80$//')
}
