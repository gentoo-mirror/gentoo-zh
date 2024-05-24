# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.2

EAPI=8

CRATES="
	addr2line@0.14.1
	adler@1.0.2
	ansi_term@0.12.1
	atty@0.2.14
	autocfg@1.0.1
	backtrace@0.3.56
	base64@0.13.0
	bitflags@1.2.1
	bumpalo@3.7.0
	byteorder@1.4.3
	cc@1.0.67
	cfg-if@1.0.0
	core-foundation-sys@0.8.2
	core-foundation@0.9.1
	ctor@0.1.20
	datetime@0.5.1
	diff@0.1.12
	failure@0.1.8
	failure_derive@0.1.8
	foreign-types-shared@0.1.1
	foreign-types@0.3.2
	getopts@0.2.21
	getrandom@0.2.2
	gimli@0.23.0
	hermit-abi@0.1.18
	httparse@1.3.5
	ipconfig@0.2.2
	itoa@0.4.7
	js-sys@0.3.49
	json@0.12.4
	lazy_static@1.4.0
	libc@0.2.91
	log@0.4.14
	matches@0.1.8
	miniz_oxide@0.4.4
	native-tls@0.2.7
	object@0.23.0
	once_cell@1.7.2
	openssl-probe@0.1.2
	openssl-src@111.15.0+1.1.1k
	openssl-sys@0.9.61
	openssl@0.10.33
	output_vt100@0.1.2
	pkg-config@0.3.19
	ppv-lite86@0.2.10
	pretty_assertions@0.7.1
	proc-macro2@1.0.24
	quote@1.0.9
	rand@0.8.3
	rand_chacha@0.3.0
	rand_core@0.6.2
	rand_hc@0.3.0
	redox_syscall@0.1.57
	redox_syscall@0.2.5
	remove_dir_all@0.5.3
	ring@0.16.20
	rustc-demangle@0.1.18
	rustls@0.19.1
	ryu@1.0.5
	schannel@0.1.19
	sct@0.6.1
	security-framework-sys@2.2.0
	security-framework@2.2.0
	serde@1.0.125
	serde_derive@1.0.125
	serde_json@1.0.64
	socket2@0.3.19
	spin@0.5.2
	syn@1.0.65
	synstructure@0.12.4
	tempfile@3.2.0
	unic-char-property@0.9.0
	unic-char-range@0.9.0
	unic-common@0.9.0
	unic-idna-mapping@0.9.0
	unic-idna-punycode@0.9.0
	unic-idna@0.9.0
	unic-normal@0.9.0
	unic-ucd-bidi@0.9.0
	unic-ucd-hangul@0.9.0
	unic-ucd-normal@0.9.0
	unic-ucd-version@0.9.0
	unicode-width@0.1.8
	unicode-xid@0.2.1
	untrusted@0.7.1
	vcpkg@0.2.11
	wasi@0.10.2+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.72
	wasm-bindgen-macro-support@0.2.72
	wasm-bindgen-macro@0.2.72
	wasm-bindgen-shared@0.2.72
	wasm-bindgen@0.2.72
	web-sys@0.3.49
	webpki-roots@0.21.1
	webpki@0.21.4
	widestring@0.4.3
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	winreg@0.6.2
"

declare -A GIT_CRATES=(
	[mutagen-core]='https://github.com/llogiq/mutagen;933bbaf4edaa22f6237b2201dff2940ff7f4193c;mutagen-%commit%/mutagen-core'
	[mutagen-transform]='https://github.com/llogiq/mutagen;933bbaf4edaa22f6237b2201dff2940ff7f4193c;mutagen-%commit%/mutagen-transform'
	[mutagen]='https://github.com/llogiq/mutagen;933bbaf4edaa22f6237b2201dff2940ff7f4193c;mutagen-%commit%/mutagen'
)

inherit cargo

DESCRIPTION="A command-line DNS client"
HOMEPAGE="https://dns.lookup.dog/"
EGIT_COMMIT="721440b12ef01a812abe5dc6ced69af6e221fad5"
SRC_URI="
	https://github.com/ogham/dog/archive/${EGIT_COMMIT}.tar.gz -> ${P}.gh.tar.gz
	${CARGO_CRATE_URIS}
"

S="${WORKDIR}/${PN}-${EGIT_COMMIT}"

LICENSE="EUPL-1.2"
# Dependent crate licenses
LICENSE+=" Apache-2.0 ISC MIT MPL-2.0"
SLOT="0"
KEYWORDS="~amd64"
PATCHES=(
	"${FILESDIR}/${PN}-0.1.0-fix-openssl.patch"
)
