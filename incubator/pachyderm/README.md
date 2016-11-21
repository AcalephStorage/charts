Pachyderm Helm Chart
====================

This directory contains a Kubernetes chart to deploy a basic Pachyderm environment

Prerequisites Details
---------------------

-	Kubernetes
-	A dedicated namespace to install Pachyderm

Todo
----

-	Make resource names match the release
-	Fix linking
-	Add more configuration (resources, etc)
-	Add S3, GCS and other Object Storage

Chart Details
-------------

This chart will do the following:

-	Implement the most basic Pachyderm deployment (no S3/GCS support yet)

Installing the Chart
--------------------

To install the chart with the release name `my-release`:

```console
$ helm repo add incubator http://storage.googleapis.com/kubernetes-charts-incubator
$ helm install --name my-release --namespace pachyderm incubator/pachyderm
```

Configuration
-------------

The following tables lists the configurable parameters of the patroni chart and their default values.

| Parameter                | Description           | Default           |
|--------------------------|-----------------------|-------------------|
| `pachd.image.repository` | Container image name  | `pachyderm/pachd` |
| `pachd.image.tag`        | Container image tag   | `1.2.3`           |
| `pachd.image.pullPolicy` | Container pull policy | `IfNotPresent`    |
| `pachd.replicaCount`     | k8s petset replicas   | `1`               |

Other services are configurable though the equivalent keys (etcd, registry, rethink)

Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`.

Alternatively, a YAML file that specifies the values for the parameters can be provided while installing the chart. For example,

```console
$ helm install --name my-release -f values.yaml incubator/pachyderm
```

> **Tip**: You can use the default [values.yaml](values.yaml)

Cleanup
-------

In order to remove everything, you can do the following:

```console
$ helm list
$ helm delete <release-name>
```
