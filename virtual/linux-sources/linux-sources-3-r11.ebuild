# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Virtual for Linux kernel sources"
SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 ~hppa ~mips ppc ppc64 ~s390 sparc x86"
IUSE="firmware"

RDEPEND="
	firmware? ( sys-kernel/linux-firmware )
	|| (
		sys-kernel/gentoo-sources
		sys-kernel/vanilla-sources
		sys-kernel/git-sources
		sys-kernel/liquorix-sources
		sys-kernel/mips-sources
		sys-kernel/pf-sources
		sys-kernel/rt-sources
		sys-kernel/zen-sources
		sys-kernel/raspberrypi-sources
		sys-kernel/xanmod-kernel
		sys-kernel/xanmod-rt
		sys-kernel/xanmod-sources
		sys-kernel/gentoo-kernel
		sys-kernel/gentoo-kernel-bin
		sys-kernel/vanilla-kernel
	)"
