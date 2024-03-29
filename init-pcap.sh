#!/usr/bin/env bash

PCAP_NAME=$1

ARKIME_DIR_PATH=/home/pslearner/arkime
IMPORT_DIR_PATH=$ARKIME_DIR_PATH/import
PCAPS_DIR_PATH=$ARKIME_DIR_PATH/pcaps


rm -rf $IMPORT_DIR_PATH
mkdir -p $IMPORT_DIR_PATH

cd $ARKIME_DIR_PATH
sudo docker-compose down || true

sudo cp $PCAPS_DIR_PATH/$PCAP_NAME $IMPORT_DIR_PATH/
sudo docker-compose up



