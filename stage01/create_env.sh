#!/bin/bash -e
git clone $1 ../stage02
virtualenv ../stage02/virtualenv
cd ../stage02/virtualenv
source bin/activate
easy_install paramiko boto argparse
cd ..
python setup.py install
deactivate
chmod -R 777 virtualenv
