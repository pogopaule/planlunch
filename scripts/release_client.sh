#!/bin/bash

cd /vagrant/client
./node_modules/.bin/ember build --environment=production
./node_modules/.bin/divshot push production
