#!/bin/bash
ENODE_LINE=$(docker logs ethereum-bootnode 2>&1 | grep enode | head -n 1 | awk -F '://' '{print $2}')
echo "enode://${ENODE_LINE}"

