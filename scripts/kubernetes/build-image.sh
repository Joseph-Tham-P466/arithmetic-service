set -u
: "$VERSION"

docker build -t ghcr.io/josephtham/arithmetic-service:$VERSION --file ./Dockerfile .