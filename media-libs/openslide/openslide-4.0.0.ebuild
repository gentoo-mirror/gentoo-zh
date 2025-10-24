# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson

DESCRIPTION="A C library that provides a simple interface to read whole-slide images"
HOMEPAGE="https://openslide.org/ https://github.com/openslide/openslide"
SRC_URI="https://github.com/openslide/openslide/releases/download/v${PV}/${P}.tar.xz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~loong"

RDEPEND="
	sys-libs/zlib
	media-libs/libjpeg-turbo
	media-libs/libpng
	media-libs/openjpeg:2
	media-libs/tiff
	dev-libs/glib
	x11-libs/cairo
	x11-libs/gdk-pixbuf
	dev-libs/libxml2
	dev-db/sqlite:3
	media-libs/libdicom
"
DEPEND="${RDEPEND}"
