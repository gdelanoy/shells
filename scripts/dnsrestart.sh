#!/bin/bash
sudo systemctl restart dnscrypt-proxy-resolvconf.service
sudo systemctl restart dnscrypt-proxy.service
sudo systemctl restart dnscrypt-proxy.socket
exit

