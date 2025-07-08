FROM n8nio/n8n

# Copy your specific workflow JSON file into the workflows directory
# Ensure your 'My workflow 2.json' is located at './workflows/My workflow 2.json'
# relative to the Docker context specified in render.yaml.
# Based on your render.yaml, this will be relative to './n8n-self-host-starter/'.
COPY ./workflows/My\ workflow\ 2.json /home/node/.n8n/workflows/My\ workflow\ 2.json

# If you have custom nodes or other workflow files, add them similarly:
# COPY ./workflows/another_workflow.json /home/node/.n8n/workflows/another_workflow.json
# COPY custom_nodes /home/node/.n8n/custom_nodes

# Set correct working directory inside the container
WORKDIR /home/node

# Expose the port n8n listens on
EXPOSE 5678

# Command to start n8n
CMD ["n8n"]
