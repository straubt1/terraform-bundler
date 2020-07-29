# Bash - Terraform <= v0.13

Create a zip file that matches the provider namespace schema.

Example:

```
├── terraform
├── hashicorp
│   ├── azurerm
│   │   └── 2.6.0
│   │       └── linux_amd64
│   │           └── terraform-provider-azurerm_v2.6.0_x5
│   └── google
│       ├── 3.16.0
│       │   └── linux_amd64
│       │       └── terraform-provider-google_v3.16.0_x5
│       └── 3.17.0
│           └── linux_amd64
│               └── terraform-provider-google_v3.17.0_x5
└── terraform-providers
    └── acme
        └── 1.5.0
            └── linux_amd64
                └── terraform-provider-acme_v1.5.0_x4
```
