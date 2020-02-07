$ORIGIN openshift-poc.dev.test.com.pl.
$TTL 1h
@	IN  SOA  lb.openshift-poc.dev.test.com.pl. root.openshift-poc.dev.test.com.pl. (
              1 ; serial number of this zone file
              1h
              1h
              4w
              1h
              )

		NS   lb.openshift-poc.dev.test.com.pl.

bastion 	A	10.143.207.141
nfs 		A	10.143.204.86
lb 		A	10.143.207.109
boot 		A	10.143.206.140
master3 	A	10.143.207.134
master2 	A	10.143.207.22
master1 	A	10.143.205.149
worker4 	A	10.143.204.18
worker3 	A	10.143.207.46
worker2 	A	10.143.204.212
worker1 	A	10.143.204.177

api		A	<FLOATING_LB>
api-int		A	10.143.207.109

etcd-0		A	10.143.205.149
etcd-1		A	10.143.205.22
etcd-2		A	10.143.205.134

_etcd-server-ssl._tcp.openshift-poc.dev.test.com.pl.  86400 IN    SRV 0        10     2380 etcd-0.openshift-poc.dev.test.com.pl.
_etcd-server-ssl._tcp.openshift-poc.dev.test.com.pl.  86400 IN    SRV 0        10     2380 etcd-1.openshift-poc.dev.test.com.pl.
_etcd-server-ssl._tcp.openshift-poc.dev.test.com.pl.  86400 IN    SRV 0        10     2380 etcd-2.openshift-poc.dev.test.com.pl.

*.apps		A	10.143.207.109
