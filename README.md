# Terraform Bundler

For Terraform Enterprise to run in an airgapped environment it needs to be provided with Terraform provider binaries at run time since they can not be fetched over the internet.

There are several ways to accomplish this, but a common solution is to bundle the provider versions with Terraform core binary.

## Docker

This method builds the 'terraform-bundle' binary based on a specified release of Terraform Core, then runs it based on a passed in configuration file to output a zip file.

Instructions [here](./docker/README.md)

## Bash Terraform 0.12

This method build a zip file using bash, the zip file is specific to Terraform 0.12 or earlier.

Instructions [here](./bash-0.12/README.md)

## Bash Terraform 0.13

This method build a zip file using bash, the zip file is specific to Terraform 0.13.

> Note: This method is still experimental while waiting for the official release of Terraform 0.13

Instructions [here](./bash-0.13/README.md)