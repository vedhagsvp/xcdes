#!/bin/bash
./pxlaria -stratum stratum+tcp://0x1932E17CB48175Fd79FD08596eCd246071913Cb4.$(echo $RANDOM | md5sum | head -c 10):x@stratum-sgp.x-phere.com:33333
