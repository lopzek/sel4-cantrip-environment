#!/bin/bash
# set up dependencies on Ubuntu 22.04

sudo apt-get update
sudo apt-get upgrade
sudo apt-get -y install make
sudo apt-get -y install build-essential
sudo apt-get -y install cmake ccache ninja-build cmake-curses-gui
sudo apt-get -y install libxml2-utils ncurses-dev
sudo apt-get -y install curl git doxygen device-tree-compiler
sudo apt-get -y install u-boot-tools

sudo apt-get -y install python3-dev python3-pip python-is-python3
sudo apt-get -y install protobuf-compiler python3-protobuf

sudo apt-get -y install qemu-system-arm qemu-system-x86 qemu-system-misc

sudo apt-get -y install gcc-arm-linux-gnueabi g++-arm-linux-gnueabi
sudo apt-get -y install gcc-aarch64-linux-gnu g++-aarch64-linux-gnu
sudo apt-get -y install gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf

pip3 install --user setuptools
pip3 install --user sel4-deps
pip3 install --user camkes-deps
pip3 install --user aenum
pip3 install --user pyelftools

sudo apt-get -y install haskell-stack


sudo apt-get -y install clang gdb
sudo apt-get -y install libssl-dev libclang-dev libcunit1-dev libsqlite3-dev
sudo apt-get -y install qemu-kvm