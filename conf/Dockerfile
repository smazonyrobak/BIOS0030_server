# Use an official Python runtime as a parent image
FROM python:3.10.10-slim

# Set the working directory in the container to /app
WORKDIR /app

# Install system dependencies required for Python packages and creating a virtual environment
RUN apt-get update && apt-get install -y \
    gcc \
    make \
    libffi-dev \
    python3-dev \
    python3-venv \
 && rm -rf /var/lib/apt/lists/*

# Upgrade pip in the global environment (optional)
RUN pip install --upgrade pip

# Create a virtual environment in the container and set it as the PATH to ensure it's used
RUN python3 -m venv /app/venv
ENV PATH="/app/venv/bin:$PATH"

# Install Python dependencies specified in requirements.txt within the virtual environment
COPY conf/requirements.txt .
RUN pip install -r requirements.txt

# Copy the project files into the container at /app/cognitive_tests_group_11
COPY cognitive_tests_group_11 ./cognitive_tests_group_11

# Set the working directory to /app/cognitive_tests_group_11
WORKDIR /app/cognitive_tests_group_11

# Copy the configuration files and scripts into the container
# Adjust paths according to the new WORKDIR
COPY conf ../conf
COPY scripts/entrypoint.sh ../scripts/
RUN chmod +x ../scripts/entrypoint.sh

# Add a non-root user 'myuser' with no password, home directory, and specified user/group ids
RUN adduser --disabled-password --gecos '' --uid 1000 myuser

# Change ownership of /app to 'myuser'
RUN chown -R myuser:myuser /app

# Switch to 'myuser'
USER myuser

# Expose the port Voila will run on (for local testing; Heroku will assign its own port)
EXPOSE 8888

# Run entrypoint.sh when the container launches which should start Voila
CMD ["../scripts/entrypoint.sh"]
