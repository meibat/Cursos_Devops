terraform {
  required_providers {
    virtualbox = {
      source = "terra-farm/virtualbox" #procurar no registry o provider
      version = "0.2.2-alpha.1"
    }
  }
}

# There are currently no configuration options for the provider itself.

resource "virtualbox_vm" "node" {
  count     = 1
  name      = format("node-%02d", count.index + 1)
  #image     = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20180903.0.0/providers/virtualbox.box"
  #url = "https://vagrantcloud.com/ubuntu/boxes/xenial64/versions/20180420.0.0/providers/virtualbox.box"
  image = "./virtualbox.box"
  cpus      = 1
  memory    = "512 mib"
  #user_data = file("${path.module}/user_data")

  network_adapter {
    type = "nat"
  }
}

output "IPAddr" {
  value = element(virtualbox_vm.node.*.network_adapter.0.ipv4_address, 1)
}
