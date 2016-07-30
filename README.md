# gotty-kube-thing

Runs `gotty` on a public port.

Each user who connects get a new `ubuntu` pod in a Kubernetes cluster.

## Gotty Bug

Because of this bug, you can wind up with a bunch of stale pods that don't get cleaned up:

https://github.com/yudai/gotty/issues/109

## Don't use it

Unless you're running with 4.7 and some special options, a simple fork-bomb could take down your nodes.

Also, at least at the time of writing, every user will get a Pod that has the cluster ServiceAccount and thus could do whatever they want to your entire Kubernetes cluster.
