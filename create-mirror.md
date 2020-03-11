
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

