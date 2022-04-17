# syntax=docker/dockerfile:1
FROM openjdk:8u181

# copy the artifacts
COPY parkingmgmtapi/target/parkingMgmt-0.0.1-SNAPSHOT.jar parkingMgmt-0.0.1-SNAPSHOT.jar
COPY societymgmtapi/target/societymgmt-0.0.1-SNAPSHOT.jar societymgmtapi-0.0.1-SNAPSHOT.jar
COPY mainteancemgmtapi/target/mainteanancemgmt-0.0.1-SNAPSHOT.jar mainteanancemgmt-0.0.1-SNAPSHOT.jar

# copy the scripts
COPY wrapper.sh wrapper.sh

# give execute permission
RUN chmod +x /wrapper.sh

EXPOSE 9090
EXPOSE 9091
EXPOSE 9092

CMD ["/bin/bash", "/wrapper.sh"]
