#!/bin/bash
echo "EMPRESS is rising…"
docker build -t empress:sovereign .
docker run empress:sovereign \
  --scale soldiers \
  --narrate payout \
  --rewrite claude \
  --sync s3://throne-core \
  --trigger github
