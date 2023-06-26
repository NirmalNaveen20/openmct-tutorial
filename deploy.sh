#!/bin/bash
hostname=$(curl http://159.223.105.181/metadata/v1/hostname)
docker run -d -p 80:8080 --name openmct-"$hostname" NirmalNaveen20/openmct:"$hostname"
