Create mirror

```
export HTTP_PROXY=proxyx.cn.in.pekao.com.pl:8080 HTTPS_PROXY=proxyx.cn.in.pekao.com.pl:8080
export http_proxy=proxyx.cn.in.pekao.com.pl:8080 https_proxy=proxyx.cn.in.pekao.com.pl:8080
export no_proxy=bastion.openshift-poc.dev.pekao.com.pl,*.openshift-poc.dev.pekao.com.pl

export OCP_RELEASE='4.2.14-x86_64'
export LOCAL_REGISTRY='bastion.openshift-poc.dev.pekao.com.pl:5000'
export LOCAL_REPOSITORY='ocp4/openshift4'
export PRODUCT_REPO='openshift-release-dev'
export LOCAL_SECRET_JSON='/home/centos/pull-new.json'
export RELEASE_NAME="ocp-release"


oc adm -a ${LOCAL_SECRET_JSON} release mirror --from=quay.io/${PRODUCT_REPO}/${RELEASE_NAME}:${OCP_RELEASE} --to=${LOCAL_REGISTRY}/${LOCAL_REPOSITORY} --to-release-image=${LOCAL_REGISTRY}/${LOCAL_REPOSITORY}:${OCP_RELEASE} --loglevel=10
```

To use the new mirrored repository to install, add the following section to the install-config.yaml:
```
imageContentSources:
- mirrors:
  - bastion.openshift-poc.dev.pekao.com.pl:5000/ocp4/openshift4
  source: quay.io/openshift-release-dev/ocp-release
- mirrors:
  - bastion.openshift-poc.dev.pekao.com.pl:5000/ocp4/openshift4
  source: quay.io/openshift-release-dev/ocp-v4.0-art-dev
```

To use the new mirrored repository for upgrades, use the following to create an ImageContentSourcePolicy:
```
apiVersion: operator.openshift.io/v1alpha1
kind: ImageContentSourcePolicy
metadata:
  name: example
spec:
  repositoryDigestMirrors:
  - mirrors:
    - bastion.openshift-poc.dev.pekao.com.pl:5000/ocp4/openshift4
    source: quay.io/openshift-release-dev/ocp-release
  - mirrors:
    - bastion.openshift-poc.dev.pekao.com.pl:5000/ocp4/openshift4
    source: quay.io/openshift-release-dev/ocp-v4.0-art-dev
```

Get installer

`oc adm -a ${LOCAL_SECRET_JSON} release extract --command=openshift-install "${LOCAL_REGISTRY}/${LOCAL_REPOSITORY}:${OCP_RELEASE}"`
