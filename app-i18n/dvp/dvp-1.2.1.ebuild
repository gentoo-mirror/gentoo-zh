# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit versionator
MY_PV=$(replace_all_version_separators "_")
MY_P="${PN}-${MY_PV}"

DESCRIPTION="The kbd keymap for Programmer Dvorak."
HOMEPAGE="http://kaufmann.no/roland/dvorak/index.html"
SRC_URI="http://kaufmann.no/downloads/linux/${MY_P}.map.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="x86 amd64 mips"
IUSE=""

DEPEND="app-arch/gzip"
RDEPEND="sys-apps/kbd"

S="${WORKDIR}"

src_prepare() {
	mv ${MY_P}.map dvp.map
	gzip -9 dvp.map
}

src_install() {
	insinto /usr/share/keymaps/i386/dvorak
	doins dvp.map.gz
}
