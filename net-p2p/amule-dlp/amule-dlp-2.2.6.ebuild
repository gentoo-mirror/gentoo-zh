# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit eutils flag-o-matic wxwidgets googlecode

MY_P="aMule-${PV}-DLP4401"
S="${WORKDIR}/aMule-${PV}"

DESCRIPTION="$PN, aMule with DLP patch"
SRC_URI="http://${PN}.googlecode.com/files/${MY_P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 hppa ppc ppc64 ~sparc x86"
IUSE="daemon debug geoip gtk nls remote stats unicode upnp"

DEPEND="=x11-libs/wxGTK-2.8*
	>=dev-libs/crypto++-5
	>=sys-libs/zlib-1.2.1
	stats? ( >=media-libs/gd-2.0.26[jpeg] )
	geoip? ( dev-libs/geoip )
	upnp? ( >=net-libs/libupnp-1.6.6 )
	remote? ( >=media-libs/libpng-1.2.0
	unicode? ( >=media-libs/gd-2.0.26 ) )
	!net-p2p/amule
"


pkg_setup() {
	if ! use gtk && ! use remote && ! use daemon; then
		eerror ""
		eerror "You have to specify at least one of gtk, remote or daemon"
		eerror "USE flag to build amule."
		eerror ""
		die "Invalid USE flag set"
	fi

	if use stats && ! use gtk; then
		einfo "Note: You would need both the gtk and stats USE flags"
		einfo "to compile aMule Statistics GUI."
		einfo "I will now compile console versions only."
	fi
}

pkg_preinst() {
	if use daemon || use remote; then
		enewgroup p2p
		enewuser p2p -1 -1 /home/p2p p2p
	fi
}

src_configure() {
	local myconf

	WX_GTK_VER="2.8"

	if use gtk; then
		einfo "wxGTK with gtk support will be used"
		need-wxwidgets unicode
	else
		einfo "wxGTK without X support will be used"
		need-wxwidgets base
	fi

	if use gtk ; then
		use stats && myconf="${myconf}
			--enable-wxcas
			--enable-alc"
		use remote && myconf="${myconf}
			--enable-amule-gui"
	else
		myconf="
			--disable-monolithic
			--disable-amule-gui
			--disable-wxcas
			--disable-alc"
	fi

	econf \
		--with-wx-config=${WX_CONFIG} \
		--with-wxbase-config=${WX_CONFIG} \
		--enable-amulecmd \
		$(use_enable debug) \
		$(use_enable !debug optimize) \
		$(use_enable daemon amule-daemon) \
		$(use_enable geoip) \
		$(use_enable nls) \
		$(use_enable remote webserver) \
		$(use_enable stats cas) \
		$(use_enable stats alcc) \
		${myconf} || die
}

src_install() {
	emake DESTDIR="${D}" install || die

	if use daemon; then
		newconfd "${FILESDIR}"/amuled.confd amuled
		newinitd "${FILESDIR}"/amuled.initd amuled
	fi
	if use remote; then
		newconfd "${FILESDIR}"/amuleweb.confd amuleweb
		newinitd "${FILESDIR}"/amuleweb.initd amuleweb
	fi
}
