# Base image with Jupyter & Python
FROM jupyter/base-notebook

# Set working directory
WORKDIR /app

# Copy only the relevant code into the image 
COPY src/ ./src/
COPY requirements.txt ./requirements.txt

# Install required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Start Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
