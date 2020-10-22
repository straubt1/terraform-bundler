#!/bin/bash

set -e -u -o pipefail

[[ $# -eq 0 ]] && echo "Please Pass a Settings File Path" && exit 1

settings_file=$1
# settings_file="./examples/test.json"

# Create tmp dir
# tmp_dir="./tmp/$(date "+%Y.%m.%d-%H.%M.%S")"
tmp_dir=$(mktemp -d)
mkdir -p ${tmp_dir}

download_provider(){
  local provider_name=$1
  local provider_version=$2

  echo "Downloading Terraform Provider ${provider_name}:${provider_version}"

  provider_zip_url="https://releases.hashicorp.com/terraform-provider-${provider_name}/${provider_version}/terraform-provider-${provider_name}_${provider_version}_linux_amd64.zip"
  zip_file_name="${provider_name}-${provider_version}.zip"
  curl -so "${tmp_dir}/${zip_file_name}" ${provider_zip_url}
  unzip -qd "${tmp_dir}" "${tmp_dir}/${zip_file_name}"

  # Cleanup zip
  rm "${tmp_dir}/${zip_file_name}"
}

settings_json=$(cat ${settings_file})
tf_version=$(echo ${settings_json} | jq -r .terraform)
providers=$(echo ${settings_json} | jq '[ .providers[] ]')
provider_names=$(echo ${settings_json} | jq '[ .providers[].name ]')
bundle_filename="terraform_${tf_version}-bundle$(date "+%Y%m%d-%H%M")_linux_amd64.zip"

echo
echo "Bundle Settings:"
echo "  Terraform Version: ${tf_version}"
echo "  Bundle to Create:  ${bundle_filename}"
echo "  Temp Directory:    ${tmp_dir}"
echo "  Providers:         ${provider_names}"
echo

tf_url="https://releases.hashicorp.com/terraform/${tf_version}/terraform_${tf_version}_linux_amd64.zip"
echo "Downloading Terraform ${tf_version}"
curl -so "${tmp_dir}/terraform.zip" ${tf_url}
unzip -d "${tmp_dir}" "${tmp_dir}/terraform.zip"
rm "${tmp_dir}/terraform.zip"

echo "Downloading Providers"
for row in $(echo ${providers} | jq -r '.[] | [.name, .versions] | @base64'); do
  _name() {
    echo ${row} | base64 --decode | jq -r .[0]
  }
  _versions() {
    echo ${row} | base64 --decode | jq -r .[1]
  }

  # echo $(_name) $(_versions)
  for version in $(_versions | jq -r .[]); do
    n=$(_name)
    v=${version}

    download_provider $n $v
  done
done

zip -qjr ${bundle_filename} ${tmp_dir}/*
rm -rf ${tmp_dir}
