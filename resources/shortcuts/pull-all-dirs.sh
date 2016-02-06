#!/bin/bash
set -e

for fi in `ls`; do cd $fi && git pull && cd .. ; done
