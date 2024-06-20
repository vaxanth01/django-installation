#!/bin/bash

# Set Python executable and pip
PYTHON="python3.11"
PIP="pip"

# Check if Python and pip are available
if ! command -v $PYTHON &> /dev/null; then
    echo "Python 3.11 is not installed or not found. Aborting."
    exit 1
fi

if ! command -v $PIP &> /dev/null; then
    echo "pip is not installed or not found. Aborting."
    exit 1
fi

# Install dependencies
$PIP install -r requirements.txt

# Perform Django migrations and other necessary commands
$PYTHON manage.py migrate
$PYTHON manage.py collectstatic --noinput
# Additional commands as needed
