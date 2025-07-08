FROM n8nio/n8n

# Copy your specific workflow JSON file into the workflows directory.
# The source path './workflows/My\ workflow\ 2.json' is relative to the
# 'dockerContext' (which is the repository root in this case).
# The destination path '/home/node/.n8n/workflows/' is where n8n expects workflows.
COPY ./workflows/Myworkflow2.json /home/node/.n8n/workflows/Myworkflow2.json

# If you have other custom nodes or other workflow files, add them similarly:
# COPY ./custom_nodes /home/node/.n8n/custom_nodes

# Set correct working directory inside the container
WORKDIR /home/node

# Expose the port n8n listens on
EXPOSE 5678

# Command to start n8n
CMD ["n8n"]
