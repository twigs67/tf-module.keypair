# tf-module.keypair
Terraform module for creating key pair.  This module will create the key, add the generated key to the AWS key pair list, and add the private key(pem file) into the secret manager   

## Usage ##
```hcl-terraform
module "key-openvpn" {
  source  = "git@github.com:bluesentry/tf-module.keypair.git"
  version = "v2.0.0"
  name    = "openvpn"
  tags    = local.tags
}
```

## Terraform versions ##
Terraform 0.12. Pin module version to ~> v2.0. Code changes are handled in `master` branch

Terraform 0.11. Pin module version to ~> v1.0. Code changes are handled in `v11` branch


## Argument Reference ##
The following module level arguments are supported.

* **name** - (Required) The keypair name.

* **tags** - (Optional) The tags assigned to all related resources that can be tagged.dd


## Outputs ##

* **key_name** - The key's name.

* **private_key** - The generated private key (pem file contents)
