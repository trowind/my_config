#!/bin/bash

. ${JYLEE_CONF_DIR}/common_conf.sh

#alias tmuxjy='tmux -L jy316 -f ${JYLEE_CONF_DIR}/.tmux.conf'
alias vi='vim -u ${JYLEE_CONF_DIR}/.vimrc_jy316'

export CDPATH="$HOME/jooyoung"
export LANG=ko_kr.UTF-8
export LC_ALL=ko_KR.utf-8
export LANGUAGE="ko_KR;ko;en_GB"
export LESSCHARSET=UTF-8

#export PYPY_BIN=/data/cluster/pypy/bin/pypy

alias hive2="/data/cluster/hive2/bin/hive"
export HIVE_UDF_JARS="/data/cluster/hive_udf/wp-udf.jar,/data/cluster/hive_udf/wp_location_udf.jar,/data/cluster/hive_udf/json-simple-1.1.1.jar,/data/cluster/hive_udf/brickhouse-0.7.1-SNAPSHOT.jar,/data/cluster/hive_udf/joda-time-2.4.jar,/data/cluster/hive_udf/qubole-hive-JDBC-0.0.6.jar,/data/cluster/hive_udf/woothee.jar"

alias run_spark_single='PYSPARK_DRIVER_PYTHON=jupyter PYSPARK_DRIVER_PYTHON_OPTS="notebook --no-browser --port=50020 --ip=0.0.0.0" pyspark --num-executors 1 --executor-memory 64g --executor-cores 39 --jars ${HIVE_UDF_JARS}'
alias run_spark='PYSPARK_DRIVER_PYTHON=jupyter PYSPARK_DRIVER_PYTHON_OPTS="notebook --no-browser --port=50020 --ip=0.0.0.0" pyspark --num-executors 2 --executor-memory 128g --executor-cores 39 --jars ${HIVE_UDF_JARS}'
alias run_spark_large='PYSPARK_DRIVER_PYTHON=jupyter PYSPARK_DRIVER_PYTHON_OPTS="notebook --no-browser --port=50050 --ip=0.0.0.0" pyspark --num-executors 4 --executor-memory 200g --executor-cores 39 --jars ${HIVE_UDF_JARS}'

alias run_jupyter='jupyter notebook --no-browser --port=50040 --ip=0.0.0.0'
alias nbconvert="jupyter nbconvert --config=/home/sysoper/jooyoung/jupyter_nbconvert_config.json --to python"

#. ${HOME}/jooyoung/python2.7/bin/activate
alias activate=". ${HOME}/jooyoung/python2.7/bin/activate"

git_config_me() {
	git config user.name "Joo-Young Lee"
	git config user.email "jooyoung@widerplanet.com"
}

alias run_webserver="python -m SimpleHTTPServer 8000"
## for Python 3.x
## alias run_webserver"python -m http.server 8000"
