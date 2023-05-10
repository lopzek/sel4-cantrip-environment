#!/bin/bash
#
# Copyright lopzek
# All rights reserved
#
# set up dev dependencies on Ubuntu 22.04

echo "========================================"
echo "Setting up dependencies"
echo "========================================"
sudo apt-get update
sudo apt-get upgrade
sudo apt-get -y install make
sudo apt-get -y install build-essential
sudo apt-get -y install cmake ccache ninja-build cmake-curses-gui
sudo apt-get -y install libxml2-utils ncurses-dev
sudo apt-get -y install curl git doxygen device-tree-compiler
sudo apt-get -y install u-boot-tools

echo "========================================"
echo "Installing Python and QEMU dependencies"
echo "========================================"
sudo apt-get -y install python3-dev python3-pip python-is-python3
sudo apt-get -y install protobuf-compiler python3-protobuf


echo "========================================"
echo "Installing QEMU"
echo "========================================"
sudo apt-get -y install qemu-system-arm qemu-system-x86 qemu-system-misc

echo "========================================"
echo "Installing ARM cross compilers"
echo "========================================"
sudo apt-get -y install gcc-arm-linux-gnueabi g++-arm-linux-gnueabi
sudo apt-get -y install gcc-aarch64-linux-gnu g++-aarch64-linux-gnu
sudo apt-get -y install gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf

echo "========================================"
echo "Installing Python dependencies"
echo "========================================"
pip3 install --user setuptools
pip3 install --user sel4-deps
pip3 install --user camkes-deps
pip3 install --user aenum
pip3 install --user pyelftools

echo "========================================"
echo "Installing Haskell dependencies"
echo "========================================"
sudo apt-get -y install haskell-stack


echo "========================================"
echo "Installing CAmkES dependencies"
echo "========================================"
sudo apt-get -y install clang gdb
sudo apt-get -y install libssl-dev libclang-dev libcunit1-dev libsqlite3-dev
sudo apt-get -y install qemu-kvm