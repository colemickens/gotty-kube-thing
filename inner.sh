export PODNAME="gotty-$RANDOM"
trap "kubectl --namespace=gotty delete pod ${PODNAME}" SIGHUP
kubectl --namespace=gotty run -i --tty "${PODNAME}" --image=ubuntu:xenial --restart=Never || true
