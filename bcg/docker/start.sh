#!/bin/bash

DEV=( $(bcg devices) )

if [ -z "${DEV[0]}" ]
then
    echo "No BigClown dongle found!"
    exit 1
fi

if [ "${#DEV[*]}" -gt 1 ]
then
    echo "WARNING: Multiple BigClown dongles found, only first one is used: ${DEV[@]}"
fi

exec bcg --device "${DEV[0]}"
