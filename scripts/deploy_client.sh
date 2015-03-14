#!/bin/bash

../client/node_modules/.bin/ember build --environment=production
divshot push production
