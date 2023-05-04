# WSL related
```powershell
# List available Linux distributions
wsl --list --online
wsl -l -o
#  Specify the Linux distribution to install
wsl --install --distribution <XX>
# List installed Linux distributions
wsl -l -v
# Confirm your distribution name for the following commands
wsl --terminate <distro_name>
# Run a specific Linux distribution from PowerShell or CMD
wsl --distribution <Distribution Name> --user <User Name>
<DistributionName> config --default-user <Username>

# /etc/wsl.conf
[user]
default=username

#Import and export a distribution
wsl --export <Distribution Name> <FileName>
wsl --unregister <DistributionName>
wsl --import <Distribution Name> <InstallLocation> <FileName>
```
# Rust related
```shell
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
rustup toolchain install nightly-2023-01-26
rustup default nightly-2023-01-26
rustup toolchain install nightly-x86_64-unknown-linux-gnu
```

# docker related
## make
```
sudo apt install make
```
# docker

## uninstall
```shell
sudo apt-get remove docker docker-engine docker.io containerd runc
```

## install
```shell
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg

sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
```


# non-docker
## repo
```shell
sudo apt-get update

sudo apt-get install repo
or
export REPO=$(mktemp /tmp/repo.XXXXXXXXX)
curl -o ${REPO} https://storage.googleapis.com/git-repo-downloads/repo
gpg --recv-key 8BB9AD793E8E6153AF0F9A4416530D5E920F5C65
curl -s https://storage.googleapis.com/git-repo-downloads/repo.asc | gpg --verify - ${REPO} && install -m 755 ${REPO} ~/bin/repo

```

# base dependencies
```shell
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install cmake ccache ninja-build cmake-curses-gui
sudo apt-get install libxml2-utils ncurses-dev
sudo apt-get install curl git doxygen device-tree-compiler
sudo apt-get install u-boot-tools
```

## 18.04
```shell
sudo apt-get install python-dev python-pip python3-dev python3-pip
sudo apt-get install protobuf-compiler python-protobuf
sudo apt-get install gcc-8 g++-8
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 800 --slave /usr/bin/g++ g++ /usr/bin/g++-8
## 20.04 22.04
sudo apt-get install python3-dev python3-pip python-is-python3
sudo apt-get install protobuf-compiler python3-protobuf
```
# QEMU
```shell
sudo apt-get install qemu-system-arm qemu-system-x86 qemu-system-misc
```
# Cross-compiling for ARM targets

```shell
sudo apt-get install gcc-arm-linux-gnueabi g++-arm-linux-gnueabi
sudo apt-get install gcc-aarch64-linux-gnu g++-aarch64-linux-gnu
sudo apt-get install gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf
```

# Python
```shell
pip3 install --user setuptools
pip3 install --user sel4-deps
pip3 install --user camkes-deps
pip3 install --user --upgrade pip
pip3 install --user sel4-deps
```

# Haskell 
```shell
sudo apt-get install haskell-stack
```

# Build
```shell
sudo apt-get install clang gdb
sudo apt-get install libssl-dev libclang-dev libcunit1-dev libsqlite3-dev
sudo apt-get install qemu-kvm
```

