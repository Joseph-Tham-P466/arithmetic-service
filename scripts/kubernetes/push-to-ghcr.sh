set -u
: "$VERSION"

echo ${{secrets.ACCESS_TOKEN}} | docker login ghcr.io --username josephtham --password-stdin
docker push ghcr.io/josephtham/arithmetic-service:$VERSION