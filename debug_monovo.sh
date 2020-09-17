export MONOVO_HOME=${HOME}/gitrepo/Monocular-Visual-Odometry

cd ${MONOVO_HOME}/debug
cmakedebug ..
make -j 

executable="${MONOVO_HOME}/bin/run_vo ${MONOVO_HOME}/config/config.yaml"

# gdb -q --ex "b feature_match.cpp:35" --ex "r" --args $executable
gdb -q --ex "r" --args $executable
