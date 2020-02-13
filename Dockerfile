FROM golang:1.12.13
LABEL maintainer="tstraub@hashicorp.com"
ARG terraform_core_version=v0.12.20
ENV bundle_hcl=bundle.hcl

RUN git clone --branch ${terraform_core_version} --depth 1 https://github.com/hashicorp/terraform.git

RUN cd terraform && go install ./tools/terraform-bundle

# Copy all scripts and have them sourced on bash loading.
# COPY scripts/ scripts/
# RUN echo -e "" > ~/.bashrc &&\
# 	echo "for f in /scripts/*;" >> ~/.bashrc &&\
# 	echo "  do chmod a+x \$f; source \$f;" >> ~/.bashrc &&\
# 	echo "done;" >> ~/.bashrc

# RUN ["/bin/bash", "-c", "shopt -s extglob"]
WORKDIR /bundle
CMD terraform-bundle package ${bundle_hcl}
