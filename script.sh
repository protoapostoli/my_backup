#!/bin/sh

# Make a GET request to the specified URL using curl
# Include the Google-Cloud-Scheduler header with value true
curl -L -H "Google-Cloud-Scheduler: true" https://app.catholicoffice.com/scheduler