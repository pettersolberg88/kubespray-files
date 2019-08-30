# This is your Editor pane. Write the Dockerfile here and 
# use the command line to execute commands
FROM nginx:alpine
COPY . /usr/share/nginx/html

RUN apk update
RUN apk add nginx
COPY default.conf /etc/nginx/conf.d/default.conf

## Kubernetes
# v1.10.12
RUN mkdir -p /kubernetes-release/release/v1.10.12/bin/linux/amd64
ADD https://storage.googleapis.com/kubernetes-release/release/v1.10.12/bin/linux/amd64/kubeadm /usr/share/nginx/html/kubernetes-release/release/v1.10.12/bin/linux/amd64/

RUN mkdir -p /usr/share/nginx/html/kubernetes-release/release/v1.10.12/bin/linux/amd64
ADD https://storage.googleapis.com/kubernetes-release/release/v1.10.12/bin/linux/amd64/hyperkube /usr/share/nginx/html/kubernetes-release/release/v1.10.12/bin/linux/amd64/

# v1.11.6
RUN mkdir -p /kubernetes-release/release/v1.11.6/bin/linux/amd64
ADD https://storage.googleapis.com/kubernetes-release/release/v1.11.6/bin/linux/amd64/kubeadm /usr/share/nginx/html/kubernetes-release/release/v1.11.6/bin/linux/amd64/

RUN mkdir -p /usr/share/nginx/html/kubernetes-release/release/v1.11.6/bin/linux/amd64
ADD https://storage.googleapis.com/kubernetes-release/release/v1.11.6/bin/linux/amd64/hyperkube /usr/share/nginx/html/kubernetes-release/release/v1.11.6/bin/linux/amd64/

# v1.12.4
RUN mkdir -p /kubernetes-release/release/v1.12.4/bin/linux/amd64
ADD https://storage.googleapis.com/kubernetes-release/release/v1.12.4/bin/linux/amd64/kubeadm /usr/share/nginx/html/kubernetes-release/release/v1.12.4/bin/linux/amd64/

RUN mkdir -p /usr/share/nginx/html/kubernetes-release/release/v1.12.4/bin/linux/amd64
ADD https://storage.googleapis.com/kubernetes-release/release/v1.12.4/bin/linux/amd64/hyperkube /usr/share/nginx/html/kubernetes-release/release/v1.12.4/bin/linux/amd64/

# v1.13.5
RUN mkdir -p /kubernetes-release/release/v1.13.5/bin/linux/amd64
ADD https://storage.googleapis.com/kubernetes-release/release/v1.13.5/bin/linux/amd64/kubeadm /usr/share/nginx/html/kubernetes-release/release/v1.13.5/bin/linux/amd64/

RUN mkdir -p /usr/share/nginx/html/kubernetes-release/release/v1.13.5/bin/linux/amd64
ADD https://storage.googleapis.com/kubernetes-release/release/v1.13.5/bin/linux/amd64/hyperkube /usr/share/nginx/html/kubernetes-release/release/v1.13.5/bin/linux/amd64/

# v1.13.10
RUN mkdir -p /kubernetes-release/release/v1.13.10/bin/linux/amd64
ADD https://storage.googleapis.com/kubernetes-release/release/v1.13.10/bin/linux/amd64/kubeadm /usr/share/nginx/html/kubernetes-release/release/v1.13.10/bin/linux/amd64/

RUN mkdir -p /usr/share/nginx/html/kubernetes-release/release/v1.13.10/bin/linux/amd64
ADD https://storage.googleapis.com/kubernetes-release/release/v1.13.10/bin/linux/amd64/hyperkube /usr/share/nginx/html/kubernetes-release/release/v1.13.10/bin/linux/amd64/

# v1.15.3
RUN mkdir -p /kubernetes-release/release/v1.15.3/bin/linux/amd64
ADD https://storage.googleapis.com/kubernetes-release/release/v1.15.3/bin/linux/amd64/kubeadm /usr/share/nginx/html/kubernetes-release/release/v1.15.3/bin/linux/amd64/

RUN mkdir -p /usr/share/nginx/html/kubernetes-release/release/v1.15.3/bin/linux/amd64
ADD https://storage.googleapis.com/kubernetes-release/release/v1.15.3/bin/linux/amd64/hyperkube /usr/share/nginx/html/kubernetes-release/release/v1.15.3/bin/linux/amd64/

## ETCD
# v3.2.24 for kubernetes <= 1.12
RUN mkdir -p /usr/share/nginx/html/coreos/etcd/releases/download/v3.2.24
ADD https://github.com/coreos/etcd/releases/download/v3.2.24/etcd-v3.2.24-linux-amd64.tar.gz /usr/share/nginx/html/coreos/etcd/releases/download/v3.2.24/

# v3.2.26 for kubernetes >= 1.13
RUN mkdir -p /usr/share/nginx/html/coreos/etcd/releases/download/v3.2.26
ADD https://github.com/coreos/etcd/releases/download/v3.2.26/etcd-v3.2.26-linux-amd64.tar.gz /usr/share/nginx/html/coreos/etcd/releases/download/v3.2.26/

# v3.3.10 for kubernetes >= 1.15
RUN mkdir -p /usr/share/nginx/html/coreos/etcd/releases/download/v3.3.10
ADD https://github.com/coreos/etcd/releases/download/v3.3.10/etcd-v3.3.10-linux-amd64.tar.gz /usr/share/nginx/html/coreos/etcd/releases/download/v3.3.10/


## CNI

# Calicoctl v3.7.3
RUN mkdir -p /usr/share/nginx/html/projectcalico/calicoctl/releases/download/v3.7.3
ADD https://github.com/projectcalico/calicoctl/releases/download/v3.7.3/calicoctl-linux-amd64 /usr/share/nginx/html/projectcalico/calicoctl/releases/download/v3.7.3


run chmod -R a+r /usr/share/nginx/html/
ENTRYPOINT ["nginx", "-g", "daemon off;"]