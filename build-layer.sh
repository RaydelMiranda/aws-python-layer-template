#!/usr/bin/env bash


PYTHON_VERSION=$(cat python_version)
SITE_PACKAGES="layer/python/lib/python${PYTHON_VERSION}/site-packages"

echo "Upgrading pip..."
pip install --upgrade pip
echo "Building layer ..."
python -m pip install -r requirements.txt -t ${SITE_PACKAGES} --upgrade
