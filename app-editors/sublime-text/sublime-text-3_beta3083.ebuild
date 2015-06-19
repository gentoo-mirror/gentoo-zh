# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
# needed by make_desktop_entry
inherit toolchain-funcs eutils git-r3

MV="${PV:0:1}"

RV="${PV:6:4}"

MY_PN="sublime_text_${MV}"
MY_P="Sublime%20Text"
S="${WORKDIR}/${MY_PN}"

IUSE="+dbus +imfix"

DESCRIPTION="Sublime Text is a sophisticated text editor for code, html and prose"
HOMEPAGE="http://www.sublimetext.com"
COMMON_URI="http://c758482.r82.cf2.rackcdn.com"
SRC_URI="amd64? ( ${COMMON_URI}/sublime_text_3_build_${RV}_x64.tar.bz2 )
x86? ( ${COMMON_URI}/sublime_text_3_build_${RV}_x32.tar.bz2 )"

EGIT_REPO_URI="https://github.com/lyfeyaj/sublime-text-imfix.git"

LICENSE="Sublime"
SLOT="0"
KEYWORDS="amd64 x86"

RESTRICT="bindist mirror strip"

RDEPEND=">=x11-libs/gtk+-2.24.8-r1:2
dbus? ( sys-apps/dbus )
imfix? ( app-i18n/fcitx )
"

DEPEND="imfix? ( >=x11-libs/gtk+-2.24.8-r1:2 app-i18n/fcitx )"

src_unpack(){
	git-r3_src_unpack
	default
}

src_compile(){
	cd ${WORKDIR}/${P}/src/
	$(tc-getCC) -shared sublime-imfix.c  -o libsublime-imfix.so $(pkg-config --libs --cflags gtk+-2.0) -fPIC
}

src_install() {
	if use imfix; then
		dodir /usr/bin
		exeinto /usr/bin/
		doexe ${FILESDIR}/subl
	fi

	dodir /opt/${PN}
	insinto /opt/${PN}
	into /opt/${PN}
	exeinto /opt/${PN}
	doins -r "Icon"
	doins -r "Packages"
	doins "python3.3.zip"
	doins "sublime.py"
	doins "sublime_plugin.py"
	doexe "sublime_text"
	doexe "plugin_host"

	if use imfix ; then
		doins ${WORKDIR}/${P}/src/libsublime-imfix.so
	else
		dosym "/opt/${PN}/sublime_text" /usr/bin/subl
	fi

	# Icon and .desktop for sublime-text
	local size
	for size in 16 32 48 128 256 ;
	do
		insinto /usr/share/icons/hicolor/${size}x${size}/apps
		newins "Icon/${size}x${size}/sublime-text.png" sublime_text.png
	done

	dosym ../icons/hicolor/48x48/apps/sublime_text.png usr/share/pixmaps/sublime_text.png

	make_desktop_entry subl "Sublime Text" sublime_text "Development;TextEditor" "StartupNotify=true"
}
