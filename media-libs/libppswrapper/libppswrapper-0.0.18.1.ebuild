# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit autotools flag-o-matic base

DESCRIPTION="A libpps wrapper"
HOMEPAGE="http://cgit.freedesktop.org/~jinghua"
SRC_URI="http://people.freedesktop.org/~jinghua/distfiles/${P}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RESTRICT="primaryuri"

DEPEND="
	media-tv/gmlive-extra[pps]"
RDEPEND="${DEPEND}"

pkg_setup() {
	filter-ldflags -Wl,--as-needed
}

src_prepare() {
	AT_M4DIR="m4" eautoreconf
}
