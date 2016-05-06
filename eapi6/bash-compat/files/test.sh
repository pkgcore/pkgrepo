#!/bin/bash

# BASH_COMPAT shouldn't be exported to spawned scripts
[[ -n ${BASH_COMPAT} ]] && exit 1
exit 0
