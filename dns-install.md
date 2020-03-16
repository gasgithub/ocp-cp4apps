```
yum install -y bind bind-utils

pliki z załącznika /etc/named.conf
drugi plik z załącznika /var/named/openshift-poc.dev.test.com.pl.db
trzeci revers /var/named/19.0.6.in-addr.arpa.db

systemctl start named
systemctl status named
systemctl enable named

firewall-cmd --zone=public --add-service=dns --permanent
firewall-cmd --reload

Ustaw sobie na lb jego ip w /etc/resolv.conf jako nameserver i sprawdź czy działa:

[root@tarantoga ~]# dig _etcd-server-ssl._tcp.test.iic.pl.ibm.com SRV +short
0 10 2380 etcd-1.openshift-poc.dev.test.com.pl
0 10 2380 etcd-0.openshift-poc.dev.test.com.pl
0 10 2380 etcd-2.openshift-poc.dev.test.com.pl

[root@tarantoga ~]# dig test.apps.test.iic.pl.ibm.com +short
<FLOARING_IP_LB>

[root@tarantoga ~]# dig master1.test.iic.pl.ibm.com +short
<WEW_MASTERA>

[root@tarantoga ~]# dig api.test.iic.pl.ibm.com +short
<FLOATING_IP_LB>

[root@tarantoga ~]# dig api-int.test.iic.pl.ibm.com +short
<WEW_ADDR_LB>

[root@tarantoga ~]# dig COŚ_W_DOMENIE_test.com.pl
aby sprawdzić forwardery.

Sprawdź to ze wszystkich węzłów klastra OpenShift.

I tak samo z jakiejś ich stacji robczej w sieci banku, jeśli windows to możesz:
ping api.openshift-poc.dev.test.com.pl
ping test.apps.openshift-poc.dev.test.com.pl

[root@tarantoga ~]# nslookup
> set type=SRV
> _etcd-server-ssl._tcp.test.iic.pl.ibm.com
Server:		10.10.10.1
Address:	10.10.10.1#53

_etcd-server-ssl._tcp.test.iic.pl.ibm.com	service = 0 10 2380 etcd-2.test.iic.pl.ibm.com.
_etcd-server-ssl._tcp.test.iic.pl.ibm.com	service = 0 10 2380 etcd-0.test.iic.pl.ibm.com.
_etcd-server-ssl._tcp.test.iic.pl.ibm.com	service = 0 10 2380 etcd-1.test.iic.pl.ibm.com.

```
