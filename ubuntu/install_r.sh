#!/usr/bin/env bash

# @link https://cran.rstudio.com/bin/linux/ubuntu

# update indices
apt update -qq

# install two helper packages we need (avoiding interactive prompts for tzdata config)
DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends software-properties-common dirmngr

# install wget
apt install -y wget

# add the signing key (by Michael Rutter) for these repos
# To verify key, run gpg --show-keys /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
# Fingerprint: E298A3A825C0D65DFD57CBB651716619E084DAB9
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc

# add the repo from CRAN -- lsb_release adjusts to 'noble' or 'jammy' or ... as needed
add-apt-repository -y "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"

# install R itself (including the dev files so that we can install R packages)
apt install -y --no-install-recommends r-base-dev
