#!/bin/bash

# Activate the virtual environment
source /app/venv/bin/activate

# Apply Jupyter configurations from jupyter.py
jupyter notebook --ip 0.0.0.0 --port 8888 --NotebookApp.notebook_dir=/app/cognitive_tests_group_11 --NotebookApp.allow_origin='*' --NotebookApp.allow_password_change=True --config /app/cognitive_tests_group_11/jupyter.py &

# Wait for the Jupyter Notebook server to start
sleep 5

# Use Voila to serve the main menu notebook on the same port as Jupyter Notebook (8888)
voila /app/cognitive_tests_group_11/main_menu_notebook.ipynb --port=8888
