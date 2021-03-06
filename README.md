# Terraform Examples and Modules for Google Cloud

This repository provides **end-to-end examples** and a **suite of Terraform modules** for Google Cloud, which support different use cases:

- starter kits used to bootstrap real-world cloud foundations and infrastructure
- reference examples used to deep dive on network patterns or product features
- composable modules that support quick prototyping and testing
- a comprehensive source of lean modules that lend themselves well to changes

The whole repository is meant to be cloned as a single unit, and then forked into separate owned repositories to seed production usage, or used as-is and periodically updated as a complete toolkit for prototyping.

Both the examples and modules require some measure of Terraform skills to be used effectively. If you are looking for a feature-rich black box to manage project or product creation with minimal specific skills, you might be better served by the [Cloud Foundation Toolkit](https://registry.terraform.io/modules/terraform-google-modules) suite of modules.

## End-to-end examples

The examples in this repository are split in two main sections: **foundational examples** that bootstrap the organizational hierarchy and automation prerequisites, and **infrastructure scenarios** that implement core networking patterns or features.

Currently available examples:

- **foundations** - [single level hierarchy](./foundations/environments/) (environments), [multiple level hierarchy](./foundations/business-units/) (business units + environments)
- **infrastructure** - [hub and spoke via peering](./infrastructure/hub-and-spoke-peering/), [hub and spoke via VPN](./infrastructure/hub-and-spoke-vpn/), [DNS and Google Private Access for on-premises](./infrastructure/onprem-google-access-dns/), [Shared VPC with GKE support](./infrastructure/shared-vpc-gke/)

For more information see the README files in the [foundations](./foundations/) and [infrastructure](./infrastructure/) folders.

## Modules

The suite of modules in this repository are designed for rapid composition and reuse, and to be reasonably simple and readable so that they can be forked and changed where use of third party code and sources is not allowed.

All modules share a similar interface where each module tries to stay close to the underlying provider resources, support IAM together with resource creation and modification, offer the option of creating multiple resources where it makes sense (eg not for projects), and be completely free of side-effects (eg no external commands).

The current list of modules supports most of the core foundational and networking components used to design end-to-end infrastructure, with more modules in active development for specialized compute, security, and data scenarios.

Currently available modules:

- **foundational** - [folders](./modules/folders), [log sinks](./modules/logging-sinks), [organization](./modules/organization), [project](./modules/project), [service accounts](./modules/iam-service-accounts)
- **networking** - [VPC](./modules/net-vpc), [VPC firewall](./modules/net-vpc-firewall), [VPC peering](./modules/net-vpc-peering), [VPN static](./modules/net-vpn-static), [VPN dynamic](./modules/net-vpn-dynamic), [VPN HA](./modules/net-vpn-ha), [NAT](./modules/net-cloudnat), [address reservation](./modules/net-address), [DNS](./modules/dns)
- **compute** - [VM/VM group](./modules/compute-vm), [GKE cluster](./modules/gke-cluster), [GKE nodepool](./modules/gke-nodepool), [COS container](./modules/cos-container) (coredns, mysql, onprem, squid)
- **data** - [GCS](./modules/gcs), [BigQuery dataset](./modules/bigquery)
- **security** - [KMS](./modules/kms)

For more information and usage examples see each module's README file.
