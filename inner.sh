export IMAGE="ubuntu:xenial"
export IMAGE="microsoft/azure-cli"
export PODNAME="gotty-$RANDOM"
trap "kubectl --namespace=gotty delete pod ${PODNAME}" SIGHUP
kubectl --namespace=gotty run -i --tty "${PODNAME}" --image="${IMAGE}" --restart=Never || true
