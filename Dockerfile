FROM quay.io/uninuvola/base:main

# DO NOT EDIT USER VALUE
USER root

## -- ADD YOUR CODE HERE !! -- ##
RUN wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc && gpg --show-keys /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
RUN  apt-get update -y && apt-get -y install r-base && wget https://download1.rstudio.org/electron/jammy/amd64/rstudio-2023.06.1-524-amd64.deb && sudo apt-get install -y -f ./rstudio-2023.06.1-524-amd64.deb
## --------------------------- ##

# DO NOT EDIT USER VALUE
USER jovyan
