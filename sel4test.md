```shell
#x86
../init-build.sh -DPLATFORM=x86_64 -DRELEASE=Debug -DSIMULATION=TRUE
#rpi3
../init-build.sh -DPLATFORM=rpi3 -DRELEASE=OFF -DSIMULATION=TRUE -DAARCH64=1 -G Ninja
# CAmKES
../init-build.sh -DPLATFORM=rpi3 -DRELEASE=OFF -DSIMULATION=TRUE -DAARCH64=1 -G Ninja -DCAMKES_APP=rpi3_usb_eth

```
