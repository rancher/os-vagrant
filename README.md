
The vagrant file will no longer be supported. We're no longer supporting our vagrant repo and have moved to supporting docker-machine to start up RancherOS. 

[Learn how easy it is to use RancherOS with docker-machine](http://docs.rancher.com/os/running-rancheros/workstation/docker-machine/).

# RancherOS Vagrant

Quickly checkout RancherOS using Vagrant/Virtualbox.


## Getting started
1.) Install dependencies

* Virtualbox (Tested with 4.3.22)
* Vagrant (Tested with 1.7.2)

2.) Clone this project

```
git clone https://github.com/rancher/os-vagrant.git
cd os-vagrant
```

3.) Up and Running

```
vagrant up
vagrant ssh
```

Start running Docker like you usually would!

## Enable Rsync folder sync
If you want to sync the current working directory via rsync edit the Vagrantfile and change this line:

<pre>$rsync_folder_disabled = true</pre>

to

<pre>
$rsync_folder_disabled = <b>false</b>
</pre>
## Upgrading RancherOS Versions

To upgrade the Vagrant box, refresh this repository from master.

```
vagrant destroy
vagrant box remove rancheros
vagrant up
```


### Customizing and configuring


To get a feel for how things work under the hood checkout the 
[RancherOS Repo](https://github.com/rancherio/os) for details.


# License
Copyright (c) 2014-2015 [Rancher Labs, Inc.](http://rancher.com)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

