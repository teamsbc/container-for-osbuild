#!/bin/bash
mkdir /run/osbuild
mkdir /run/osbuild-store

mount -t tmpfs tmpfs /run/osbuild
mount -t tmpfs tmpfs /run/osbuild-store

cp -p /usr/bin/osbuild /run/osbuild/osbuild

chcon system_u:object_r:root_t:s0 /run/osbuild-store
chcon system_u:object_r:install_exec_t:s0 /run/osbuild/osbuild

mount -t devtmpfs devtmpfs /dev
mount --bind /run/osbuild/osbuild /usr/bin/osbuild

osbuild --store=/run/osbuild-store --output-directory=/out $@
