#!/usr/bin/env bash

APP_KEY=$(pio app list | grep recommender | awk {'print $7'})

# Install Recommendation Engine Template
# http://predictionio.incubator.apache.org/templates/recommendation/quickstart/

[ -z "$APP_KEY" ] && echo "Starting create new app" \
&& git clone https://github.com/apache/incubator-predictionio-template-recommender.git /opt/recommender \
&& pio app new recommender \
&& cd /opt/recommender \
&& sed -i -e 's/INVALID_APP_NAME/recommender/' engine.json;
