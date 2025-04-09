set -u
: "$CONTAINER_REGISTRY"
: "$VERSION"

envsubst < ./deploy-arithmetica.yaml | kubectl apply -f -