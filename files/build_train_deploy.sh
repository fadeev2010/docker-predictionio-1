#!/usr/bin/env bash

cd /opt/recommender/

pio build &&
pio train &&
pio deploy
