# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop xdg-utils unpacker

DESCRIPTION="Mihomo Party"
HOMEPAGE="https://mihomo.party"
SRC_URI="https://github.com/mihomo-party-org/mihomo-party/releases/download/v${PV}/mihomo-party-linux-${PV}-amd64.deb"

S="${WORKDIR}"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+tun"

DEPEND="
	dev-libs/nss
	media-libs/alsa-lib
	media-libs/mesa
	net-print/cups
	x11-libs/gtk+:3
	x11-libs/libdrm
	x11-libs/libxkbcommon
"

RESTRICT="strip"

QA_PREBUILT="*"

src_install() {
	domenu usr/share/applications/mihomo-party.desktop
	doicon -s 512 usr/share/icons/hicolor/512x512/apps/mihomo-party.png
	insinto /opt/
	doins -r opt/mihomo-party
	fperms +x /opt/mihomo-party/chrome-sandbox
	fperms +x /opt/mihomo-party/chrome_crashpad_handler
	fperms +x /opt/mihomo-party/mihomo-party
	fperms +x /opt/mihomo-party/resources/sidecar/mihomo
	fperms +x /opt/mihomo-party/resources/sidecar/mihomo-alpha
	if use tun; then
		fperms +s /opt/mihomo-party/resources/sidecar/mihomo
		fperms +s /opt/mihomo-party/resources/sidecar/mihomo-alpha
	fi
}

pkg_postinst() {
	xdg_desktop_database_update
	xdg_icon_cache_update
}

pkg_postrm() {
	xdg_desktop_database_update
	xdg_icon_cache_update
}
