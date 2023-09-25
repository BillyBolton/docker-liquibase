#!/bin/bash

# Load environment variables from .env file
source .env

# Set db.name.DEFAULT with a default value based on the value of db.name.DEV
db.name.DEFAULT=${db.name.DEFAULT:-$db.name.DEV}

# Export all variables to make them available in the current shell session
export username password db.name.DEV db.name.STG db.name.PROD db.name.DEFAULT
