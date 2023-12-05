#!/bin/bash

# Activate the virtual environment
source /app/venv/bin/activate

# Use Voila to serve the specified notebook
voila /app/cognitive_tests_group_11/All_tests_launcher/all_tests_launcher.ipynb --port=$PORT --no-browser --VoilaConfiguration.trust_notebooks=True --strip_sources=True --enable_nbextensions=True
