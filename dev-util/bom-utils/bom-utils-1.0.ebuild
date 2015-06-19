# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit cmake-utils

DESCRIPTION="Small programs to add or remove the BOM mark in UTF8 files"
HOMEPAGE="https://code.google.com/p/utf-bom-utils"
SRC_URI="https://utf-bom-utils.googlecode.com/files/utf-bom-utils_src.zip"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}/utf-bom-utils_src"


