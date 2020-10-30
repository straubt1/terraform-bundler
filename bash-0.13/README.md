# Bash - Terraform <= v0.13

Create a zip file that matches the provider namespace schema.

Example:

```
├── plugins
│   └── registry.terraform.io
│       ├── getstackhead
│       │   └── acme
│       │       └── 1.5.0-patched
│       │           └── linux_amd64
│       │               └── terraform-provider-acme_v1.5.0-patched
│       └── hashicorp
│           ├── aws
│           │   └── 3.11.0
│           │       └── linux_amd64
│           │           └── terraform-provider-aws_v3.11.0_x5
│           ├── azurerm
│           │   └── 1.43.0
│           │       └── linux_amd64
│           │           └── terraform-provider-azurerm_v1.43.0_x4
│           └── random
│               └── 2.3.0
│                   └── linux_amd64
│                       └── terraform-provider-random_v2.3.0_x4
└── terraform
```
