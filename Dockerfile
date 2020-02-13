FROM golang:1.12.13
LABEL maintainer="tstraub@hashicorp.com"
ARG terraform_core_version=v0.12.20
ENV bundle_hcl=bundle.hcl

RUN git clone --branch ${terraform_core_version} --depth 1 https://github.com/hashicorp/terraform.git
RUN cd terraform && go install ./tools/terraform-bundle

WORKDIR /bundle
CMD terraform-bundle package ${bundle_hcl}
