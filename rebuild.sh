#!/bin/bash

docker build -t="infynyxx/storm" storm
docker build -t="infynyxx/storm-nimbus" storm-nimbus
docker build -t="infynyxx/storm-supervisor" storm-supervisor
docker build -t="infynyxx/storm-ui" storm-ui
