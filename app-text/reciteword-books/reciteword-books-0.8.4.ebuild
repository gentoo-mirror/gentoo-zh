# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

DESCRIPTION="Reciteword's books."
HOMEPAGE="http://reciteword.cosoft.org.cn/"
SRC_URI="http://downloads.sourceforge.net/reciteword/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~sparc ~x86"

RDEPEND=">=app-text/reciteword-0.8.4"

src_install() {
	dodir /usr/share/reciteword
	cd ${WORKDIR}
	cp -R books ${D}/usr/share/reciteword
}
