#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Use latest branch
# sed -i 's/openwrt_commit=".*"/openwrt_commit=""/g' build.sh

# base_on_openwrt_2102
sed -i $'/cp -r "$openwrt_src_dir" "$target-src"/a\if [[ -f "$target-src/tools/xxd/Makefile" ]]; then\\\n  sed -i "s/http/https/g" $target-src/tools/xxd/Makefile\\\nfi' build.sh

# Remove extra device
# sed -i 's/^CONFIG_TARGET.*DEVICE_psg1218a=y/@&/g' targets/ramips/profiles/mt7620/config
# sed -i 's/^CONFIG_TARGET.*DEVICE.*=y//g' targets/ramips/profiles/mt7620/config
# sed -i 's/^@//g' targets/ramips/profiles/mt7620/config

# base_on_openwrt_2102
sed -i 's/^CONFIG_TARGET.*DEVICE.*=y/# &/g' targets/ramips/profiles/mt7620/config
sed -i 's/# CONFIG_TARGET_DEVICE_ramips_mt7620_DEVICE_phicomm_psg1218a is not set/CONFIG_TARGET_DEVICE_ramips_mt7620_DEVICE_phicomm_psg1218a=y/g' targets/ramips/profiles/mt7620/config