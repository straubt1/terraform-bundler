# Non bundler way


```sh
terraform
terraform-provider-google-beta_v3.16.0_x5
terraform-provider-google_v3.16.0_x5
terraform-provider-random_v2.2.1_x4
```

```sh

# download_provider "azurerm" "2.6.0"


# Get list of versions https://registry.terraform.io/v1/providers/hashicorp/azurerm

#  GET https://registry.terraform.io/v1/providers/hashicorp/azurerm/2.6.0/download/darwin/amd64

# provider_name="azurerm"
# provider_version="2.6.0"
# # provider_url="https://registry.terraform.io/v1/providers/hashicorp/${provider_name}/${provider_version}/download/linux/amd64"
# provider_zip_url="https://releases.hashicorp.com/terraform-provider-${provider_name}/${provider_version}/terraform-provider-${provider_name}_${provider_version}_linux_amd64.zip"

# # download_url":
# # https://releases.hashicorp.com/terraform-provider-azurerm/2.6.0/terraform-provider-azurerm_2.6.0_linux_amd64.zip
# # https://releases.hashicorp.com/terraform-provider-azurerm/2.6.0/terraform-provider-azurerm_2.6.0_linux_amd64.zip
# echo ${provider_zip_url}
# provider_filename=""
# # curl -o "${tmp_dir}/t.zip" ${provider_zip_url}
# unzip -d "${tmp_dir}" "${tmp_dir}/t.zip"

# rm -f ${tmp_dir}
```