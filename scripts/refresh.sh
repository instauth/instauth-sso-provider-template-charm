#!/bin/bash
export LOCAL_CHARM_REPO=${LOCAL_CHARM_REPO-~/charms/precise}
export CHARM_HOME=$(dirname "$0")/..

export CHARM_NAME=sso-provider

echo "Refreshing charm ${CHARM_NAME} from ${CHARM_HOME} into ${LOCAL_CHARM_REPO}:"

rm -rf ${LOCAL_CHARM_REPO}/${CHARM_NAME}
mkdir -p ${LOCAL_CHARM_REPO}/${CHARM_NAME}
cp -r ${CHARM_HOME}/* ${LOCAL_CHARM_REPO}/${CHARM_NAME}/.
find ${LOCAL_CHARM_REPO}/${CHARM_NAME} -name ".git*" -exec rm -rf {} \;
