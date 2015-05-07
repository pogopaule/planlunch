#!/bin/bash

# Initial Setup
# wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
# heroku login
# heroku keys:add
# git remote add heroku git@heroku.com:planlunch-server.git
git push heroku `git subtree split --prefix server master`:master --force
