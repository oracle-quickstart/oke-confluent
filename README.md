This repo contains templates for deploying [Confluent](https://www.confluent.io)  on [OCI](https://cloud.oracle.com/cloud-infrastructure) using [Oracle Kubernetes Engine (OKE)](https://cloud.oracle.com/containers/kubernetes-engine), [Helm Charts](https://docs.helm.sh/), [Terraform](https://www.terraform.io/) and scripts (bash).

Confluent Platform is a streaming platform that enables you to organize and manage data from many different sources with one reliable, high performance system.

This template installs Confluent Open Source version.

This template does the following:
    1. Deploy a Kubernetes cluster on OCI in a new vcn (virtual cloud network), including nodepool across 3 availability domains (ADs).
    2. On your local machine
        a. Generate a Kube Config to access the above cluster
        b. Install kubectl
        c. Install helm
        d. Add Confluent Helm Charts to helm repo
    3. Install Confluent Platform on Kubernetes Cluster. (my-confluent-oss)


Kubernetes Cluster on OCI:
![](./images/OCI_Cluster_Console_Capture.PNG)


Confluent Pods running on the cluster:
![](./images/kubectl_get_pods_Capture.PNG)
