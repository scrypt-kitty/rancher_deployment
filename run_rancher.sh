#!/bin/bash
sudo docker run -d --name rancher --restart=unless-stopped -v ./data:/var/lib/rancher -p 80:80 -p 443:443 --privileged rancher/rancher
