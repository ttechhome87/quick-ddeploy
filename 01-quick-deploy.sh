#!/bin/bash

# ---------------------------------------------------------------------------- #
# INSTALL DEPENDENCIES


# Required for installing some of the python dependencies:
sudo apt -y install -y build-essential python3-setuptools python3-wheel

# Required python dependencies:
sudo apt -y install -y python3 python3-pip python3-dev imagemagick fonts-liberation optipng gnupg libpq-dev libmagic-dev mime-support libzbar0 poppler-utils

sudo apt -y install -y unpaper ghostscript icc-profiles-free qpdf liblept5 libxml2 pngquant zlib1g tesseract-ocr

# On Raspberry Pi, these libraries are required as well:
sudo apt -y install -y libatlas-base-dev libxslt1-dev

echo "'01-quick-deploy.sh' successfully finished. Now executing '02-quick-deploy.sh'" && \
./02-quick-deploy.sh
