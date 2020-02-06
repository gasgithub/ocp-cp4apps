Installation of load balancer

[centos@lb ~]$ sudo -i
[root@lb ~]# yum -y install haproxy
Loaded plugins: fastestmirror
Determining fastest mirrors
base                                                                                                                                 | 3.6 kB  00:00:00
docker-ce                                                                                                                            | 3.5 kB  00:00:00
docker-engine                                                                                                                        | 2.9 kB  00:00:00
extras                                                                                                                               | 2.9 kB  00:00:00
updates                                                                                                                              | 2.9 kB  00:00:00
(1/5): docker-ce/x86_64/updateinfo                                                                                                   |   55 B  00:00:05
(2/5): docker-ce/x86_64/primary_db                                                                                                   |  37 kB  00:00:05
(3/5): extras/7/x86_64/primary_db                                                                                                    | 159 kB  00:00:05
(4/5): docker-engine/primary_db                                                                                                      |  34 kB  00:00:06
(5/5): updates/7/x86_64/primary_db                                                                                                   | 6.7 MB  00:00:10
Resolving Dependencies
--> Running transaction check
---> Package haproxy.x86_64 0:1.5.18-9.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

============================================================================================================================================================
 Package                              Arch                                Version                                   Repository                         Size
============================================================================================================================================================
Installing:
 haproxy                              x86_64                              1.5.18-9.el7                              base                              834 k

Transaction Summary
============================================================================================================================================================
Install  1 Package

Total download size: 834 k
Installed size: 2.6 M
Downloading packages:
haproxy-1.5.18-9.el7.x86_64.rpm                                                                                                      | 834 kB  00:00:06
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : haproxy-1.5.18-9.el7.x86_64                                                                                                              1/1
  Verifying  : haproxy-1.5.18-9.el7.x86_64                                                                                                              1/1

Installed:
  haproxy.x86_64 0:1.5.18-9.el7

Complete!



