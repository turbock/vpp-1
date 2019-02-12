# Contiv - VPP

[![Build Status](https://travis-ci.org/contiv/vpp.svg?branch=master)](https://travis-ci.org/contiv/vpp)
[![Coverage Status](https://coveralls.io/repos/github/contiv/vpp/badge.svg?branch=master)](https://coveralls.io/github/contiv/vpp?branch=master)
[![Go Report Card](https://goreportcard.com/badge/github.com/contiv/vpp)](https://goreportcard.com/report/github.com/contiv/vpp)
[![GoDoc](https://godoc.org/github.com/contiv/vpp?status.svg)](https://godoc.org/github.com/contiv/vpp)
[![GitHub license](https://img.shields.io/badge/license-Apache%20license%202.0-blue.svg)](https://github.com/contiv/vpp/blob/master/LICENSE)

This Kubernetes network plugin uses FD.io VPP to provide network connectivity
between PODs. Currently, only Kubernetes 1.9.X and higher versions are supported.

For more details see [https://contivpp.io/](https://contivpp.io/).


## Releases
|Release|Version|Date|
|---|---|---|
|Latest stable release|[![Latest release](https://img.shields.io/github/release/contiv/vpp.svg)](https://github.com/contiv/vpp/releases/latest)|![release date](https://img.shields.io/github/release-date/contiv/vpp.svg?style=flat)|

Please see the [CHANGELOG](CHANGELOG.md) for a full list of changes on every release.

## Documentation
The [docs folder](docs) contains lots of documentation. For the begging, you can start with:
* [ARCHITECTURE](docs/ARCHITECTURE.md) for high-level description of Contiv-VPP
  components and operation,
* [NETWORKING](docs/NETWORKING.md) for detailed description on how the network
  is programmed with Contiv-VPP,
* [DEVELOPER GUIDE](docs/dev-guide) for details on how Contiv-VPP works internally.


## Quickstart
You can get started with Contiv-VPP in one of the following ways:
* Use the [Contiv-VPP Vagrant Installation](vagrant/README.md) instructions to start a
  simulated Kubernetes cluster with a couple of hosts running in VirtualBox
  VMs. This is the easiest way to bring up a cluster for exploring the
  capabilities and features of Contiv-VPP.

* Use the [Contiv-specific kubeadm install](docs/MANUAL_INSTALL.md)
  instructions to manually install Kubernetes with Contiv-VPP networking on one
  or more bare-metal servers.

* Use the [Arm64-specific kubeadm install](docs/arm64/MANUAL_INSTALL_ARM64.md)
  instructions to manually install Kubernetes with Contiv-VPP networking on one or more
  bare-metal servers of Arm64 platform.

* Use the [Calico-VPP Vagrant](vagrant/calico-vpp/README.md) to explore deployment of VPP
  in Calico clusters, where some of the nodes can be running plain Calico (without VPP)
  and some of the nodes can be running Calico with VPP.


## Configuration & Troubleshooting
Please refer to the [Contiv-VPP configuration and troubleshooting](docs/TOOLS.md) document.


## Reporting Bugs
In order to report a bug, please file an issue in GitHub. Please provide
the information described in [Bug Reports README](docs/BUG_REPORTS.md).


## Communication Channels
Slack Channel: [https://contivvpp.slack.com/](https://contivvpp.slack.com/)


## Contributing
If you are interested in contributing, please see the [contribution guidelines](docs/dev-guide/CONTRIBUTING.md).
