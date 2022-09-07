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

# Remove extra device
sed -i 's/^CONFIG_TARGET.*DEVICE_psg1218a=y/@&/g' targets/ramips/profiles/mt7620/config
sed -i 's/^CONFIG_TARGET.*DEVICE.*=y//g' targets/ramips/profiles/mt7620/config
sed -i 's/^@//g' targets/ramips/profiles/mt7620/config