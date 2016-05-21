#!/bin/bash

FILE_PREFIX=$1
compgen -v > "./${FILE_PREFIX}-spawned-vars"
