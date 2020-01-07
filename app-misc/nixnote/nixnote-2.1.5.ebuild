# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7

inherit qmake-utils


if [[ "${PV}" == *9999* ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/robert7/${PN}2.git"
else
	SRC_URI="https://github.com/robert7/${PN}2/archive/v${PV}.tar.gz -> ${PN}2-${PV}.tar.gz"
	S="${WORKDIR}/${PN}2-${PV}"
fi

SLOT="2"
DESCRIPTION="Nixnote - A clone of Evernote for Linux"
HOMEPAGE="https://github.com/robert7/${PN}"

LICENSE="GPL-2"
[[ ${PV} == *9999* ]] || KEYWORDS="~amd64 ~x86"
IUSE="hunspell webcam"

DEPEND="dev-libs/boost
		  net-misc/curl
            app-text/poppler[qt5]
            dev-qt/qtwebkit:5
            dev-qt/qtcore:5
            dev-qt/qtgui:5
            dev-qt/qtsql:5
            dev-qt/qtxml:5
            dev-qt/qtnetwork:5
            dev-qt/qtwidgets:5
            dev-qt/qtprintsupport:5
            dev-qt/qtdbus:5
            dev-qt/qtdeclarative:5
            dev-qt/linguist-tools:5

		  hunspell? ( app-text/hunspell )
		  
		  webcam?  ( media-libs/opencv:0= )
		"
RDEPEND="${DEPEND}
		app-text/tidy-html5"

src_prepare() {
	QT_SELECT=qt5 lupdate -pro nixnote2.pro -no-obsolete || die
	QT_SELECT=qt5 lrelease nixnote2.pro || die

	eapply "${FILESDIR}"/tidy-source-dir-location.patch
	eapply "${FILESDIR}"/fix-build-script.patch
	eapply_user
}

src_configure() {
	./development/build-with-qmake.sh

    if use hunspell; then
        cd ${S}/plugins/hunspell
        eqmake5 Hunspell.pro

        cd ${S}
    fi
    if use webcam; then
        cd ${S}/plugins/webcam
        eqmake5 WebCam.pro

        cd ${S}
    fi
}

src_compile() {
	export QT_DEBUG_PLUGINS=1
	export QT_PLUGIN_PATH=/usr/lib64/qt5/plugins

	emake || die "build Nixnote failed"

	if use hunspell; then
		cd ${S}/plugins/hunspell
		emake || die "plugin Hunspell build failed"

		cd ${S}
	fi
	if use webcam; then
		cd ${S}/plugins/webcam
		emake || die "plugin WebCam build failed"
		
		cd ${S}
	fi

}
src_install() {
	emake INSTALL_ROOT=${D} install

	dodoc -r changelog.txt LICENSE shortcuts.txt themes.ini

	rm -r ${D}/usr/share/nixnote2/translations/*.ts
	
	if use hunspell; then
		insinto /usr/$(get_libdir)/nixnote2
		doins plugins/libhunspellplugin.so
	fi

	if use webcam; then
		insinto /usr/$(get_libdir)/nixnote2
		doins plugins/libwebcamplugin.so
	fi
	
	doman ${S}/docs/nixnote2.1
}
