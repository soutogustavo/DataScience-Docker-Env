FROM python:3.9-slim

LABEL maintenaner="Gustavo Souto"
LABEL version="1.0"
LABEL description="My Data Science Environment for Data Exploration"

# Install GIT
RUN apt-get update && apt-get install -y git

# Install Libraries
COPY requirements.txt .
RUN pip install -r requirements.txt

# Git Extension for Jupyter Lab
RUN pip install --upgrade jupyterlab jupyterlab-git

EXPOSE 8889
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8889", "--no-browser", "--allow-root"]