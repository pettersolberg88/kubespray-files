# This is your Editor pane. Write the Dockerfile here and 
# use the command line to execute commands
FROM nginx:alpine
COPY . /usr/share/nginx/html
ADD https://storage.googleapis.com/kubernetes-release/release/v1.12.4/bin/linux/amd64/kubeadm /usr/share/nginx/html/
ADD https://storage.googleapis.com/kubernetes-release/release/v1.12.4/bin/linux/amd64/hyperkube /usr/share/nginx/html/
ADD https://github.com/coreos/etcd/releases/download/v3.2.24/etcd-v3.2.24-linux-amd64.tar.gz /usr/share/nginx/html/
ADD https://github.com/containernetworking/plugins/releases/download/v0.6.0/cni-plugins-amd64-v0.6.0.tgz /usr/share/nginx/html/
