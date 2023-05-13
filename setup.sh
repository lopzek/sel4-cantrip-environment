#!/bin/bash
#
# Copyright lopzek
# All rights reserved
#
# set up dev dependencies on Ubuntu 22.04


echo "========================================"
echo "Setting up dependencies"
echo "========================================"
apt-get update
apt-get upgrade
apt-get -y install python3-pip
apt-get -y install build-essential
apt-get -y install cmake ccache ninja-build cmake-curses-gui
apt-get -y install libxml2-utils ncurses-dev
apt-get -y install curl git doxygen device-tree-compiler
apt-get -y install u-boot-tools

echo "========================================"
echo "Installing Python and QEMU dependencies"
echo "========================================"
apt-get -y install python3-dev python3-pip python-is-python3
apt-get -y install protobuf-compiler python3-protobuf


echo "========================================"
echo "Installing QEMU"
echo "========================================"
apt-get -y install qemu-system-arm qemu-system-x86 qemu-system-misc qemu qemu-system

echo "========================================"
echo "Installing ARM cross compilers"
echo "========================================"
apt-get -y install gcc-arm-linux-gnueabi g++-arm-linux-gnueabi
apt-get -y install gcc-aarch64-linux-gnu g++-aarch64-linux-gnu
apt-get -y install gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf


echo "========================================"
echo "Installing Haskell dependencies"
echo "========================================"
apt-get -y install haskell-stack


echo "========================================"
echo "Installing CAmkES dependencies"
echo "========================================"
apt-get -y install clang gdb
apt-get -y install libssl-dev libclang-dev libcunit1-dev libsqlite3-dev
apt-get -y install qemu-kvm
apt-get -y install gawk

# gdb debug
apt-get -y install gdb-multiarch 
# u boot
apt-get -y install bison
apt-get -y install flex
apt-get -y install bc

# python3-venv
apt-get -y install python3-venv

# CAmkES visual
apt-get -y install git repo libncurses-dev python-pip libxml2-utils cmake ninja-build clang libssl-dev libsqlite3-dev libcunit1-dev gcc-multilib expect qemu-system-x86 qemu-system-arm gcc-arm-none-eabi binutils-arm-none-eabi

echo "========================================"
echo "install compiler"
echo "========================================"
cd ~
if [ -a gcc-arm-11.2-2022.02-x86_64-aarch64-none-linux-gnu.tar.xz ] 
then
	echo "download compiler"
	wget https://developer.arm.com/-/media/Files/downloads/gnu/11.2-2022.02/binrel/gcc-arm-11.2-2022.02-x86_64-aarch64-none-linux-gnu.tar.xz
	tar xf gcc-arm-11.2-2022.02-x86_64-aarch64-none-linux-gnu.tar.xz
	PATH=~/gcc-arm-11.2-2022.02-x86_64-aarch64-none-linux-gnu/bin:$PATH
else

	echo "compiller installed"
fi

