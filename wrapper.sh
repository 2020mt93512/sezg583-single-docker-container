#!/bin/bash

# Run all the JARs
java -jar parkingMgmt-0.0.1-SNAPSHOT.jar &
java -jar mainteanancemgmt-0.0.1-SNAPSHOT.jar &
java -jar societymgmtapi-0.0.1-SNAPSHOT.jar

# Wait for any process to exit
wait -n

# Exit with status of process that exited first
exit $?