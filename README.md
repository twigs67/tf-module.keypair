# tf-module.keypair
Terraform module for creating key pair.  This module will create the key, add the generated key to the AWS key pair list, and add the private key(pem file) into the secret manager   

## Usage ##
```hcl-terraform
module "key-openvpn" {
  source  = "git@github.com:bluesentry/tf-module.keypair.git"
  version = "v1.0.0"
  name    = "openvpn"
  tags    = "${local.tags}"
}
```

* Note:  always reference a specific version. 


## Argument Reference ##
The following module level arguments are supported.

* name - (Required) The keypair name.

* tags - (Optional) The tags assigned to all related resources that can be tagged.dd


## Outputs ##

* key_name - The key's name.
