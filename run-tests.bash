#!/bin/bash
set -e -x

cd travis-repo-checks-master
bash ./run-pkgcheck.bash "${@}" |& awk -f ./parse-pcheck-output.awk
cd -

[[ ${PIPESTATUS[0]} == 0 ]]
