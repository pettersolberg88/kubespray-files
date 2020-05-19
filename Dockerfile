# This is your Editor pane. Write the Dockerfile here and 
# use the command line to execute commands
FROM nginx:alpine
COPY . /usr/share/nginx/html

RUN apk update
RUN apk add nginx
COPY default.conf /etc/nginx/conf.d/default.conf

## Kubernetes

# v1.15.3
RUN mkdir -p /kubernetes-release/release/v1.15.3/bin/linux/amd64
ADD https://storage.googleapis.com/kubernetes-release/release/v1.15.3/bin/linux/amd64/kubeadm /usr/share/nginx/html/kubernetes-release/release/v1.15.3/bin/linux/amd64/

RUN mkdir -p /usr/share/nginx/html/kubernetes-release/release/v1.15.3/bin/linux/amd64
ADD https://storage.googleapis.com/kubernetes-release/release/v1.15.3/bin/linux/amd64/hyperkube /usr/share/nginx/html/kubernetes-release/release/v1.15.3/bin/linux/amd64/

# v1.16.6
RUN mkdir -p /kubernetes-release/release/v1.16.6/bin/linux/amd64
ADD https://storage.googleapis.com/kubernetes-release/release/v1.16.6/bin/linux/amd64/kubeadm /usr/share/nginx/html/kubernetes-release/release/v1.16.6/bin/linux/amd64/

RUN mkdir -p /usr/share/nginx/html/kubernetes-release/release/v1.16.6/bin/linux/amd64
ADD https://storage.googleapis.com/kubernetes-release/release/v1.16.6/bin/linux/amd64/hyperkube /usr/share/nginx/html/kubernetes-release/release/v1.16.6/bin/linux/amd64/

# v1.16.7
RUN mkdir -p /kubernetes-release/release/v1.16.7/bin/linux/amd64
ADD https://storage.googleapis.com/kubernetes-release/release/v1.16.7/bin/linux/amd64/kubeadm /usr/share/nginx/html/kubernetes-release/release/v1.16.7/bin/linux/amd64/

RUN mkdir -p /usr/share/nginx/html/kubernetes-release/release/v1.16.7/bin/linux/amd64
ADD https://storage.googleapis.com/kubernetes-release/release/v1.16.7/bin/linux/amd64/hyperkube /usr/share/nginx/html/kubernetes-release/release/v1.16.7/bin/linux/amd64/

# v1.16.9
RUN mkdir -p /kubernetes-release/release/v1.16.9/bin/linux/amd64
ADD https://storage.googleapis.com/kubernetes-release/release/v1.16.9/bin/linux/amd64/kubeadm /usr/share/nginx/html/kubernetes-release/release/v1.16.9/bin/linux/amd64/

# v1.17.5
RUN mkdir -p /kubernetes-release/release/v1.17.5/bin/linux/amd64
ADD https://storage.googleapis.com/kubernetes-release/release/v1.17.5/bin/linux/amd64/kubeadm /usr/share/nginx/html/kubernetes-release/release/v1.17.5/bin/linux/amd64/


## Kubelet

# Kubelet v1.16.6
RUN mkdir -p /usr/share/nginx/html/kubernetes-release/release/v1.16.6/bin/linux/amd64/kubelet
ADD https://storage.googleapis.com/kubernetes-release/release/v1.16.6/bin/linux/amd64/kubelet /usr/share/nginx/html/kubernetes-release/release/v1.16.6/bin/linux/amd64/

# Kubelet v1.16.7
RUN mkdir -p /usr/share/nginx/html/kubernetes-release/release/v1.16.7/bin/linux/amd64/kubelet
ADD https://storage.googleapis.com/kubernetes-release/release/v1.16.7/bin/linux/amd64/kubelet /usr/share/nginx/html/kubernetes-release/release/v1.16.7/bin/linux/amd64/

# Kubelet v1.16.9
RUN mkdir -p /usr/share/nginx/html/kubernetes-release/release/v1.16.9/bin/linux/amd64/kubelet
ADD https://storage.googleapis.com/kubernetes-release/release/v1.16.9/bin/linux/amd64/kubelet /usr/share/nginx/html/kubernetes-release/release/v1.16.9/bin/linux/amd64/

# Kubelet v1.17.5
RUN mkdir -p /usr/share/nginx/html/kubernetes-release/release/v1.17.5/bin/linux/amd64/kubelet
ADD https://storage.googleapis.com/kubernetes-release/release/v1.17.5/bin/linux/amd64/kubelet /usr/share/nginx/html/kubernetes-release/release/v1.17.5/bin/linux/amd64/


## Kubectl

# Kubctl v1.16.6
RUN mkdir -p /usr/share/nginx/html/kubernetes-release/release/v1.16.6/bin/linux/amd64/kubectl
ADD https://storage.googleapis.com/kubernetes-release/release/v1.16.6/bin/linux/amd64/kubectl /usr/share/nginx/html/kubernetes-release/release/v1.16.6/bin/linux/amd64/

# Kubctl v1.16.7
RUN mkdir -p /usr/share/nginx/html/kubernetes-release/release/v1.16.7/bin/linux/amd64/kubectl
ADD https://storage.googleapis.com/kubernetes-release/release/v1.16.7/bin/linux/amd64/kubectl /usr/share/nginx/html/kubernetes-release/release/v1.16.7/bin/linux/amd64/

# Kubctl v1.16.9
RUN mkdir -p /usr/share/nginx/html/kubernetes-release/release/v1.16.9/bin/linux/amd64/kubectl
ADD https://storage.googleapis.com/kubernetes-release/release/v1.16.9/bin/linux/amd64/kubectl /usr/share/nginx/html/kubernetes-release/release/v1.16.9/bin/linux/amd64/

# Kubctl v1.17.5
RUN mkdir -p /usr/share/nginx/html/kubernetes-release/release/v1.17.5/bin/linux/amd64/kubectl
ADD https://storage.googleapis.com/kubernetes-release/release/v1.17.5/bin/linux/amd64/kubectl /usr/share/nginx/html/kubernetes-release/release/v1.17.5/bin/linux/amd64/


## ETCD
# v3.3.10 for kubernetes >= 1.15
RUN mkdir -p /usr/share/nginx/html/coreos/etcd/releases/download/v3.3.10
ADD https://github.com/coreos/etcd/releases/download/v3.3.10/etcd-v3.3.10-linux-amd64.tar.gz /usr/share/nginx/html/coreos/etcd/releases/download/v3.3.10/

# v3.3.12 for kubernetes >= 1.17.5
RUN mkdir -p /usr/share/nginx/html/coreos/etcd/releases/download/v3.3.12
ADD https://github.com/coreos/etcd/releases/download/v3.3.12/etcd-v3.3.12-linux-amd64.tar.gz /usr/share/nginx/html/coreos/etcd/releases/download/v3.3.12/

## CNI

# Calicoctl v3.7.3
RUN mkdir -p /usr/share/nginx/html/projectcalico/calicoctl/releases/download/v3.7.3
ADD https://github.com/projectcalico/calicoctl/releases/download/v3.7.3/calicoctl-linux-amd64 /usr/share/nginx/html/projectcalico/calicoctl/releases/download/v3.7.3

# Calicoctl v3.11.1
RUN mkdir -p /usr/share/nginx/html/projectcalico/calicoctl/releases/download/v3.11.1
ADD https://github.com/projectcalico/calicoctl/releases/download/v3.11.1/calicoctl-linux-amd64 /usr/share/nginx/html/projectcalico/calicoctl/releases/download/v3.11.1

# Calicoctl v3.13.2
RUN mkdir -p /usr/share/nginx/html/projectcalico/calicoctl/releases/download/v3.13.2
ADD https://github.com/projectcalico/calicoctl/releases/download/v3.13.2/calicoctl-linux-amd64 /usr/share/nginx/html/projectcalico/calicoctl/releases/download/v3.13.2


# v0.8.1
RUN mkdir -p /usr/share/nginx/html/containernetworking/plugins/releases/download/v0.8.1
ADD https://github.com/containernetworking/plugins/releases/download/v0.8.1/cni-plugins-linux-amd64-v0.8.1.tgz /usr/share/nginx/html/containernetworking/plugins/releases/download/v0.8.1/

RUN mkdir -p /usr/share/nginx/html/containernetworking/plugins/releases/download/v0.8.5
ADD https://github.com/containernetworking/plugins/releases/download/v0.8.5/cni-plugins-linux-amd64-v0.8.5.tgz /usr/share/nginx/html/containernetworking/plugins/releases/download/v0.8.5/

run chmod -R a+r /usr/share/nginx/html/
ENTRYPOINT ["nginx", "-g", "daemon off;"]