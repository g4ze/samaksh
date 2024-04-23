#!/bin/bash

# Run npm install
echo "Running npm install..."
npm install

echo "Running npm install in client directory..."
cd client && npm install

echo "Running create.sh script in server/database directory..."
cd ../server/database && sudo sh create.sh

echo "Running npm run start in client directory..."
cd ../../client && npm run start