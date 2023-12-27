## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

helm repo add xzchaoo https://xzchaoo.github.io/holoinsight-helm-charts

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo
xzchaoo` to see the charts.

To install the holoinsight chart:
    kubectl create namespace holoinsight
    helm install -n holoinsight-server holoinsight-server xzchaoo/holoinsight

To uninstall the chart:

    helm delete -n holoinsight-server holoinsight-server

## Changelogs
### 0.2.5
- remove mongodb

### To-0.2.3
...
### To-0.2.2
...
