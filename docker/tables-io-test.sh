#!/bin/bash
set -eo pipefail
echo $pwd
source /opt/desc/py38/etc/profile.d/conda.sh
conda activate base
git clone https://github.com/lsstdesc/tables_io
cd tables_io
pip install .
pytest ./tests
exit 0
