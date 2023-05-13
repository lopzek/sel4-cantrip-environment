#!/bin/bash
#
# Copyright lopzek
# All rights reserved
#
# set up dev dependencies on Ubuntu 22.04
if ! command -v rustup &> /dev/null
then
	echo "install rust"
	echo "========================================"

	curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
	rustup target add aarch64-unknown-none
	rustup toolchain install nightly-2023-01-26
	rustup default nightly-2023-01-26
	rustup toolchain install nightly-x86_64-unknown-linux-gnu
fi
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
sudo apt-get -y install gawk

echo "========================================"
echo "install compiler"
echo "========================================"
if [ -a gcc-arm-11.2-2022.02-x86_64-aarch64-none-linux-gnu.tar.xz ] 
then
	cd ~
	echo "download compiler"
	wget https://developer.arm.com/-/media/Files/downloads/gnu/11.2-2022.02/binrel/gcc-arm-11.2-2022.02-x86_64-aarch64-none-linux-gnu.tar.xz
	tar xf gcc-arm-11.2-2022.02-x86_64-aarch64-none-linux-gnu.tar.xz
	PATH=~/gcc-arm-11.2-2022.02-x86_64-aarch64-none-linux-gnu/bin:$PATH
else

	echo "compiller installed"
fi

