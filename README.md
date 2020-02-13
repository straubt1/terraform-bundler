# terraform-bundler

Docker build to create Terraform bundles for Terraform Enterprise.

## [Example] Default

Create a `bundle.hcl` file as documented [here](https://github.com/hashicorp/terraform/tree/master/tools/terraform-bundle#usage).

Change to the working directory containing `bundle.hcl`.

Run:

```sh
docker run --rm -it -v $(pwd)/:/bundle/ tstraub/terraform-bundler
```

The resulting zip will be created in the working directory.

## [Example] Using Custom bundle file

Create a `custom.hcl` file.

Change to the working directory containing `custom.hcl`.

Run:

```sh
docker run --rm -it -v $(pwd)/:/bundle/ -e "bundle_hcl=custom.hcl" tstraub/terraform-bundler
```

The resulting zip will be created in the working directory.

## [Example] Using Custom providers

Create a `bundle.hcl` file.

Change to the working directory containing `bundle.hcl`.

Create a subfolder called `plugins/` and place any provider binaries in that directory.

Run:

```sh
docker run --rm -it -v $(pwd)/:/bundle/ tstraub/terraform-bundler
```

The process will pull from the `plugins/` first, then reaching out to the internet.
The resulting zip will be created in the working directory.


## Docker Build

```sh
# Build docker locally
docker build -t terraform-bundler .

# Run container and bash in to test
docker run --rm -it terraform-bundler bash
```
