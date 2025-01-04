#!/usr/bin/env bash

set -e

# ensure code is formatted correctly and that imports are sorted as some IDE's automatically change it before commit
mvn formatter:format impsort:sort