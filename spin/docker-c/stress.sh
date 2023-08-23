#!/bin/bash

for i in {1..1000000}
do
  curl localhost:3000 &
done

wait