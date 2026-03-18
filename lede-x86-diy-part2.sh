#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.6.1/192.168.9.254/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/AP-HanimmWrt/g' package/base-files/files/bin/config_generate

# Modify filename, add date prefix
#sed -i 's/IMG_PREFIX:=/IMG_PREFIX:=$(shell date +"%Y%m%d")-/1' include/image.mk

# Modify ppp-down, add sleep 3. my source code is change, no need this
#sed -i '$a\\sleep 3' package/network/services/ppp/files/lib/netifd/ppp-down

#增加连接数
echo 'net.netfilter.nf_conntrack_max=1000000' >> package/kernel/linux/files/sysctl-nf-conntrack.conf
echo 'net.netfilter.nf_conntrack_buckets=250000' >> package/kernel/linux/files/sysctl-nf-conntrack.conf
echo 'net.netfilter.nf_conntrack_expect_max=32768' >> package/kernel/linux/files/sysctl-nf-conntrack.conf

echo 'net.netfilter.nf_conntrack_tcp_timeout_established=900' >> package/kernel/linux/files/sysctl-nf-conntrack.conf
echo 'net.netfilter.nf_conntrack_tcp_timeout_time_wait=30' >> package/kernel/linux/files/sysctl-nf-conntrack.conf
echo 'net.netfilter.nf_conntrack_tcp_timeout_close_wait=30' >> package/kernel/linux/files/sysctl-nf-conntrack.conf
echo 'net.netfilter.nf_conntrack_tcp_timeout_fin_wait=30' >> package/kernel/linux/files/sysctl-nf-conntrack.conf
echo 'net.netfilter.nf_conntrack_tcp_timeout_last_ack=30' >> package/kernel/linux/files/sysctl-nf-conntrack.conf

echo 'net.netfilter.nf_conntrack_udp_timeout=10' >> package/kernel/linux/files/sysctl-nf-conntrack.conf
echo 'net.netfilter.nf_conntrack_udp_timeout_stream=60' >> package/kernel/linux/files/sysctl-nf-conntrack.conf

echo 'net.netfilter.nf_conntrack_icmp_timeout=10' >> package/kernel/linux/files/sysctl-nf-conntrack.conf
echo 'net.netfilter.nf_conntrack_generic_timeout=60' >> package/kernel/linux/files/sysctl-nf-conntrack.conf

echo 'net.core.somaxconn=65535' >> package/kernel/linux/files/sysctl-nf-conntrack.conf
echo 'net.core.netdev_max_backlog=65536' >> package/kernel/linux/files/sysctl-nf-conntrack.conf

echo 'net.ipv4.tcp_max_syn_backlog=65536' >> package/kernel/linux/files/sysctl-nf-conntrack.conf
echo 'net.ipv4.tcp_fin_timeout=15' >> package/kernel/linux/files/sysctl-nf-conntrack.conf
echo 'net.ipv4.tcp_tw_reuse=1' >> package/kernel/linux/files/sysctl-nf-conntrack.conf

echo 'net.ipv4.ip_local_port_range=1024 65535' >> package/kernel/linux/files/sysctl-nf-conntrack.conf
