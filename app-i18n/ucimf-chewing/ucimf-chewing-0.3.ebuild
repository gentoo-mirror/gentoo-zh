# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="The Chewing IMF module for UCIMF"
HOMEPAGE="http://ucimf.googlecode.com"
SRC_URI="${HOMEPAGE}/files/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug minimal"

DEPEND="app-i18n/libucimf dev-libs/libchewing"
RDEPEND="${DEPEND}"

src_compile() {
	econf $(use_enable debug)
	emake || die "emake failed"
}

src_install() {
	emake install DESTDIR="${D}" || die "Install failed"
	dodoc AUTHORS ChangeLog NEWS README
}
