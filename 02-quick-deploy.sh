#!/bin/bash

# Required for installing some of the python dependencies:
sudo apt -y install -y build-essential python3-setuptools python3-wheel

# Required python dependencies:
sudo apt -y install -y python3 python3-pip python3-dev imagemagick fonts-liberation optipng gnupg libpq-dev libmagic-dev mime-support libzbar0 poppler-utils

# Languages: https://github.com/tesseract-ocr/tesseract/blob/main/doc/tesseract.1.asc#LANGUAGES
# tesseract-ocr-eng, tesseract-ocr-deu tesseract-ocr-afr tesseract-ocr-equ tesseract-ocr-fra tesseract-ocr-ita tesseract-ocr-osd  tesseract-ocr-pol  tesseract-ocr-por t>sudo apt -y install -y unpaper ghostscript icc-profiles-free qpdf liblept5 libxml2 pngquant zlib1g tesseract-ocr

# On Raspberry Pi, these libraries are required as well:
sudo apt -y install -y libatlas-base-dev libxslt1-dev

# Install redis >= 5.0 and configure it to start automatically.
sudo apt -y install -y redis

GNU nano 6.2                                                          quick-deploy-docker-images.sh                                                                    
# PULL DOCKER IMAGES: PART I
docker pull dgtlmoon/changedetection.io
docker pull linuxserver/paperless-ngx
docker pull linuxserver/papermerge

# PULL DOCKER IMAGES: PART II
docker pull linuxserver/filezilla
docker pull linuxserver/pyload-ng
docker pull linuxserver/libreoffice

# PULL DOCKER IMAGES: PART III
docker pull linuxserver/freshrss
docker pull linuxserver/apprise-api
docker pull linuxserver/swag
docker pull linuxserver/openvscode-server

