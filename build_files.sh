#!/bin/bash

# Find Python executable (adjust as needed for your Python installation)
PYTHON="python"
PIP="pip"

# Check if Python and pip are available
command -v $PYTHON >/dev/null 2>&1 || { echo >&2 "Python is not installed or not found. Aborting."; exit 1; }
command -v $PIP >/dev/null 2>&1 || { echo >&2 "pip is not installed or not found. Aborting."; exit 1; }

# Install dependencies
$PIP install -r requirements.txt

# Perform Django migrations and other necessary commands
$PYTHON manage.py migrate
$PYTHON manage.py collectstatic --noinput
# Additional commands as needed
