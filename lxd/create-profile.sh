#!/bin/bash
PROFILE_NAME=$1
PROFILE=$2
USER_DATA=$3
CPU=$4
MEMORY=$5

lxc profile create ${PROFILE_NAME} && \
lxc profile edit ${PROFILE_NAME} < ${PROFILE} && \
lxc profile set ${PROFILE_NAME} user.user-data="$(cat ${USER_DATA})" limits.cpu=${CPU} limits.memory=${MEMORY}
