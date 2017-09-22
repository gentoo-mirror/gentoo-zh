# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit qmake-utils

DESCRIPTION="DtkSettings is a powerfull tool to generation config form json."
HOMEPAGE="https://github.com/linuxdeepin/dtksettings"
if [[ "${PV}" == *9999* ]] ; then
    inherit git-r3
    EGIT_REPO_URI="https://github.com/linuxdeepin/${PN}.git"
else
    SRC_URI="https://github.com/linuxdeepin/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
    KEYWORDS="~amd64 ~x86"
fi

LICENSE="GPL-3+"
SLOT="0"
IUSE=""

RDEPEND="dev-qt/qtmultimedia:5[widgets]
		 dev-qt/qtgui:5
		 dev-qt/qtwidgets:5
		 dev-qt/qttest:5
		 >=dev-qt/qtcore-5.5:5
	     "
DEPEND="${RDEPEND}
	     "

src_prepare() {
	eqmake5	PREFIX=/usr LIB_INSTALL_DIR=/usr/$(get_libdir)
	default_src_prepare
}

src_install() {
	emake INSTALL_ROOT=${D} install
}

