#!/bin/bash
docker run --restart on-failure --name psn -d -v $HOME/psn:/fusion-node fusionnetwork/efsn -u '0x497BEB88eBF474E9f25259036f7C641c0eFdf091' -e bert0x
