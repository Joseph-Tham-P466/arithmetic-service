#!/bin/bash
set -u

# Check if required environment variables are set
if [ -z "$CONTAINER_REGISTRY" ] || [ -z "$VERSION" ]; then
    echo "Error: CONTAINER_REGISTRY and VERSION must be set"
    exit 1
fi

# Get the directory where the script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Use sed to replace the variables in the deployment file
sed "s|\$CONTAINER_REGISTRY|$CONTAINER_REGISTRY|g; s|\$VERSION|$VERSION|g" "$SCRIPT_DIR/kubernetes/deploy-arithmetica.yaml" | kubectl apply -f -