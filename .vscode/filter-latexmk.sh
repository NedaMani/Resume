#!/usr/bin/env bash

set -e

latexmk "$@"

find "$PWD/build" -mindepth 1 ! -name '*.pdf' -exec rm -rf {} +