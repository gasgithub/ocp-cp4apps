Create a systemd drop-in directory for the docker service:
```
sudo mkdir -p /etc/systemd/system/docker.service.d
```
adds the HTTP_PROXY environment variable:

```
create a file called /etc/systemd/system/docker.service.d/https-proxy.conf that adds the HTTPS_PROXY environment

[Service]
Environment="HTTP_PROXY=http://proxy.example.com:80/"
[Service]
Environment="HTTPS_PROXY=https://proxy.example.com:443/"


[Service]    
Environment="HTTPS_PROXY=https://proxy.example.com:443/" "NO_PROXY=localhost,127.0.0.1,docker-registry.example.com,.corp"


Flush changes:

$ sudo systemctl daemon-reload
Restart Docker:

$ sudo systemctl restart docker
Verify that the configuration has been loaded:

$ systemctl show --property=Environment docker
Environment=HTTP_PROXY=http://proxy.example.com:80/
Or, if you are behind an HTTPS proxy server:

$ systemctl show --property=Environment docker
Environment=HTTPS_PROXY=https://proxy.example.com:443/
```
