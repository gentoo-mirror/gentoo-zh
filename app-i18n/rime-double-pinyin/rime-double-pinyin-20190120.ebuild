# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit unpacker

EGIT_COMMIT="69bf85d4dfe8bac139c36abbd68d530b8b6622ea"
SRC_URI="https://github.com/rime/${PN}/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64 ~arm64 ~x86"

DESCRIPTION="double-pinyin input for rime"
HOMEPAGE="https://github.com/rime/rime-double-pinyin"
LICENSE="LGPL-3"
SLOT="0"

DEPEND="
	app-i18n/rime-luna-pinyin
	app-i18n/rime-stroke
	>=app-i18n/rime-data-1
"
RDEPEND="$DEPEND"

S="${WORKDIR}/${PN}-${EGIT_COMMIT}"

src_install() {
	local dir="/usr/share/rime-data"
	insinto "$dir"

	doins *.yaml
}
