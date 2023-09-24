#!/bin/bash
docker run -it \
    -v /Users/fasiahmed/docker/env_db:/home/bindmount1/ \
    -v /Users/fasiahmed/docker/devcontainer:/home/bindmount2/ \
    -v naveed:/home/volume1/ \
    -v meraj:/home/volume2/ \
    5c8c0ae6e639