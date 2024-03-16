#!/bin/bash
mongoimport -v --host mongo_db --db reddit --collection reddit_data --type json --file /data/db/corpus-webis-tldr-17.json
