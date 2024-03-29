# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="A command-line based markdown presentation tool"
HOMEPAGE="https://github.com/visit1985/mdp"

EGIT_REPO_URI="https://github.com/visit1985/mdp.git"

LICENSE="GPL-3"
SLOT="0"

RDEPEND="sys-libs/ncurses"

src_prepare() {
	# remove the CFLAGS and LDFLAGS defination in Makefile, use default option in make.conf as the binary will be stripped automatically
	sed -i -e '/CFLAGS[[:space:]]*=/d' -e '/LDFLAGS[[:space:]]*=/d' Makefile
}

src_install() {
	dobin mdp
}
