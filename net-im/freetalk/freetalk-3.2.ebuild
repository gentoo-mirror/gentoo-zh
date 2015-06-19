# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit autotools eutils

DESCRIPTION="Console based Jabber client"
HOMEPAGE="http://www.gnu.org/software/freetalk/"
SRC_URI="http://savannah.gnu.org/download/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64 ~x86"
LICENSE="GPL-3"
IUSE=""

RDEPEND="
	dev-libs/glib:2
	dev-scheme/guile
	net-libs/loudmouth"
DEPEND="${RDEPEND}"

src_prepare() {
	epatch \
		"${FILESDIR}"/${PV}-callback.patch \
		"${FILESDIR}"/${PV}-asneeded.patch \
		"${FILESDIR}"/${PV}-aclocal.patch
	eautoreconf
}

src_install() {
	emake DESTDIR="${D}" install || die
}
