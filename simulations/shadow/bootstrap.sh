#!/usr/bin/env bash

## get general OS updates
dnf update -y

## install shadow dependencies
dnf install -y gcc gcc-c++ make cmake clang clang-devel llvm llvm-devel glib2 glib2-devel igraph igraph-devel xz xz-devel

## install shadow-plugin-tor dependencies
dnf install -y gcc automake autoconf zlib zlib-devel

## install tools for analyzing shadow output
dnf install -y python numpy scipy python-matplotlib python-networkx python-lxml python-twisted-web python-stem

## install generally useful dev tools
dnf install -y git dstat screen htop

## get shadow/tor
cd /vagrant
git clone https://github.com/shadow/shadow.git
git clone https://github.com/shadow/shadow-plugin-tor.git
git clone https://git.torproject.org/tor.git -b release-0.2.7

## setup shadow/tor
cd /vagrant/shadow
python setup build -cg
python setup install
cd /vagrant/tor
cd /vagrant/shadow-plugin-tor
python setup dependencies -y
python setup build -cg --tor-prefix /vagrant/tor
python setup install

## get shadow in your path
echo "export PATH=${PATH}:/home/${USER}/.shadow/bin" >> ~/.bashrc

## set some configs (for running large simulations)
echo "* soft nofile 25000" >> /etc/security/limits.conf
echo "* hard nofile 25000" >> /etc/security/limits.conf
echo "vm.max_map_count = 262144" >> /etc/sysctl.conf
sysctl -w vm.max_map_count=262144
echo "fs.file-max = 5000000" >> /etc/sysctl.conf
sysctl -w fs.file-max=5000000
sysctl -p
