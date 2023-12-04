#!/bin/bash

# Activate the virtual environment
source /app/venv/bin/activate

# OR for Jupyter Lab
jupyter lab --ip 0.0.0.0 --port 8888 --no-browser --allow-root