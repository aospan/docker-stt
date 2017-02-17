#!/bin/bash

set -e

cd /opt/kaldi/egs/apiai_decode/s5/
./recognize-wav.sh /opt/in/in.wav
