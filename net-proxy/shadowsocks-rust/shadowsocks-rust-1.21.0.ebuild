# Copyright 2022-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4-r1

EAPI=8

CRATES="
	addr2line@0.24.1
	adler2@2.0.0
	aead@0.5.2
	aes@0.8.4
	aes-gcm@0.10.3
	aes-gcm-siv@0.11.1
	ahash@0.8.11
	aho-corasick@1.1.3
	alloc-no-stdlib@2.0.4
	alloc-stdlib@0.2.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstream@0.6.15
	anstyle@1.0.8
	anstyle-parse@0.2.5
	anstyle-query@1.1.1
	anstyle-wincon@3.0.4
	anyhow@1.0.89
	arc-swap@1.7.1
	arrayref@0.3.9
	arrayvec@0.7.6
	async-channel@2.3.1
	async-compression@0.4.12
	async-task@4.7.1
	async-trait@0.1.82
	atomic-waker@1.1.2
	autocfg@1.3.0
	backtrace@0.3.74
	base16ct@0.2.0
	base64@0.13.1
	base64@0.21.7
	base64@0.22.1
	base64ct@1.6.0
	bit-vec@0.7.0
	bitflags@1.3.2
	bitflags@2.6.0
	bitvec@1.0.1
	blake3@1.5.4
	block-buffer@0.10.4
	blocking@1.6.1
	bloomfilter@1.0.14
	brotli@6.0.0
	brotli-decompressor@4.0.1
	bson@2.13.0
	build-time@0.1.3
	bumpalo@3.16.0
	byte_string@1.0.0
	byteorder@1.5.0
	bytes@1.7.2
	c2rust-bitfields@0.19.0
	c2rust-bitfields-derive@0.19.0
	camellia@0.1.0
	cc@1.1.21
	ccm@0.5.0
	cfg-if@1.0.0
	cfg_aliases@0.2.1
	chacha20@0.9.1
	chacha20poly1305@0.10.1
	chrono@0.4.38
	cipher@0.4.4
	clap@4.5.18
	clap_builder@4.5.18
	clap_lex@0.7.2
	cmake@0.1.51
	colorchoice@1.0.2
	concurrent-queue@2.5.0
	const-oid@0.9.6
	constant_time_eq@0.3.1
	core-foundation@0.9.4
	core-foundation-sys@0.8.7
	cpufeatures@0.2.14
	crc32fast@1.4.2
	crossbeam-channel@0.5.13
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.20
	crypto-bigint@0.5.5
	crypto-common@0.1.6
	ctr@0.9.2
	daemonize@0.5.0
	data-encoding@2.6.0
	defmt@0.3.8
	defmt-macros@0.3.9
	defmt-parser@0.3.4
	der@0.7.9
	deranged@0.3.11
	derivative@2.2.0
	destructure_traitobject@0.2.0
	digest@0.10.7
	directories@5.0.1
	dirs-sys@0.4.1
	displaydoc@0.2.5
	ecdsa@0.16.9
	ed25519@2.2.3
	elliptic-curve@0.13.8
	encoding_rs@0.8.34
	enum-as-inner@0.6.1
	env_filter@0.1.2
	env_logger@0.11.5
	equivalent@1.0.1
	errno@0.3.9
	etherparse@0.16.0
	event-listener@5.3.1
	event-listener-strategy@0.5.2
	fastrand@1.9.0
	fastrand@2.1.1
	ff@0.13.0
	filetime@0.2.25
	flate2@1.0.33
	fnv@1.0.7
	foreign-types@0.3.2
	foreign-types-shared@0.1.1
	form_urlencoded@1.2.1
	fs2@0.4.3
	fsevent-sys@4.1.0
	funty@2.0.0
	futures@0.3.30
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-executor@0.3.30
	futures-io@0.3.30
	futures-lite@2.3.0
	futures-macro@0.3.30
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-util@0.3.30
	fxhash@0.2.1
	generic-array@0.14.7
	getrandom@0.2.15
	ghash@0.5.1
	gimli@0.31.0
	group@0.13.0
	h2@0.3.26
	h2@0.4.6
	h3@0.0.2
	h3-quinn@0.0.3
	hash32@0.3.1
	hashbrown@0.14.5
	heapless@0.8.0
	heck@0.5.0
	hermit-abi@0.3.9
	hex@0.4.3
	hickory-proto@0.24.1
	hickory-resolver@0.24.1
	hkdf@0.12.4
	hmac@0.12.1
	hostname@0.3.1
	http@0.2.12
	http@1.1.0
	http-body@1.0.1
	http-body-util@0.1.2
	httparse@1.9.4
	httpdate@1.0.3
	humantime@2.1.0
	hyper@1.4.1
	hyper-rustls@0.27.3
	hyper-tls@0.6.0
	hyper-util@0.1.8
	iana-time-zone@0.1.61
	iana-time-zone-haiku@0.1.2
	icu_collections@1.5.0
	icu_locid@1.5.0
	icu_locid_transform@1.5.0
	icu_locid_transform_data@1.5.0
	icu_normalizer@1.5.0
	icu_normalizer_data@1.5.0
	icu_properties@1.5.1
	icu_properties_data@1.5.0
	icu_provider@1.5.0
	icu_provider_macros@1.5.0
	idna@0.4.0
	idna@0.5.0
	idna@1.0.2
	indexmap@2.5.0
	inotify@0.9.6
	inotify-sys@0.1.5
	inout@0.1.3
	instant@0.1.13
	ipconfig@0.3.2
	ipnet@2.10.0
	iprange@0.6.7
	is_terminal_polyfill@1.70.1
	itoa@1.0.11
	jemalloc-sys@0.5.4+5.3.0-patched
	jemallocator@0.5.4
	jobserver@0.1.32
	js-sys@0.3.70
	json5@0.4.1
	kqueue@1.0.8
	kqueue-sys@1.0.4
	lazy_static@1.5.0
	libc@0.2.158
	libloading@0.8.5
	libmimalloc-sys@0.1.39
	libredox@0.1.3
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.14
	litemap@0.7.3
	lock_api@0.4.12
	log@0.4.22
	log-mdc@0.1.0
	log4rs@1.3.0
	lru-cache@0.1.2
	lru_time_cache@0.11.11
	managed@0.8.0
	match_cfg@0.1.0
	matchers@0.1.0
	md-5@0.10.6
	memchr@2.7.4
	mimalloc@0.1.43
	mime@0.3.17
	miniz_oxide@0.8.0
	mio@0.8.11
	mio@1.0.2
	native-tls@0.2.12
	nix@0.29.0
	notify@6.1.1
	nu-ansi-term@0.46.0
	num-conv@0.1.0
	num-traits@0.2.19
	num_threads@0.1.7
	object@0.36.4
	once_cell@1.19.0
	opaque-debug@0.3.1
	openssl@0.10.66
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-src@300.3.2+3.3.2
	openssl-sys@0.9.103
	option-ext@0.2.0
	ordered-float@2.10.1
	overload@0.1.1
	p256@0.13.2
	p384@0.13.0
	parking@2.2.1
	parking_lot@0.11.2
	parking_lot@0.12.3
	parking_lot_core@0.8.6
	parking_lot_core@0.9.10
	percent-encoding@2.3.1
	pest@2.7.13
	pest_derive@2.7.13
	pest_generator@2.7.13
	pest_meta@2.7.13
	pin-project@1.1.5
	pin-project-internal@1.1.5
	pin-project-lite@0.2.14
	pin-utils@0.1.0
	piper@0.2.4
	pkcs8@0.10.2
	pkg-config@0.3.30
	poly1305@0.8.0
	polyval@0.6.2
	powerfmt@0.2.0
	ppv-lite86@0.2.20
	primeorder@0.13.6
	proc-macro-error@1.0.4
	proc-macro-error-attr@1.0.4
	proc-macro2@1.0.86
	qrcode@0.14.1
	quick-error@1.2.3
	quinn@0.10.2
	quinn@0.11.5
	quinn-proto@0.10.6
	quinn-proto@0.11.8
	quinn-udp@0.4.1
	quinn-udp@0.5.5
	quote@1.0.37
	radium@0.7.0
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	redox_syscall@0.2.16
	redox_syscall@0.5.4
	redox_users@0.4.6
	regex@1.10.6
	regex-automata@0.1.10
	regex-automata@0.4.7
	regex-syntax@0.6.29
	regex-syntax@0.8.4
	reqwest@0.12.7
	resolv-conf@0.7.0
	ring@0.16.20
	ring@0.17.8
	ring-compat@0.8.0
	rpassword@7.3.1
	rpmalloc@0.2.2
	rpmalloc-sys@0.2.3+b097fd0
	rtoolbox@0.0.2
	rustc-demangle@0.1.24
	rustc-hash@1.1.0
	rustc-hash@2.0.0
	rustix@0.38.37
	rustls@0.21.12
	rustls@0.23.13
	rustls-native-certs@0.6.3
	rustls-native-certs@0.7.3
	rustls-native-certs@0.8.0
	rustls-pemfile@1.0.4
	rustls-pemfile@2.1.3
	rustls-pki-types@1.8.0
	rustls-webpki@0.101.7
	rustls-webpki@0.102.8
	ryu@1.0.18
	same-file@1.0.6
	schannel@0.1.24
	scopeguard@1.2.0
	sct@0.7.1
	sec1@0.7.3
	security-framework@2.11.1
	security-framework-sys@2.12.0
	sendfd@0.4.3
	serde@1.0.210
	serde-value@0.7.0
	serde_bytes@0.11.15
	serde_derive@1.0.210
	serde_json@1.0.128
	serde_urlencoded@0.7.1
	serde_yaml@0.9.34+deprecated
	sha1@0.10.6
	sha2@0.10.8
	shadowsocks-crypto@0.5.5
	sharded-slab@0.1.7
	shlex@1.3.0
	signal-hook-registry@1.4.2
	signature@2.2.0
	siphasher@1.0.1
	slab@0.4.9
	sled@0.34.7
	sm4@0.5.1
	smallvec@1.13.2
	smoltcp@0.11.0
	snmalloc-rs@0.3.6
	snmalloc-sys@0.3.6
	socket2@0.5.7
	spin@0.5.2
	spin@0.9.8
	spki@0.7.3
	stable_deref_trait@1.2.0
	strsim@0.11.1
	subtle@2.6.1
	syn@1.0.109
	syn@2.0.77
	sync_wrapper@1.0.1
	synstructure@0.13.1
	sysexits@0.8.2
	system-configuration@0.6.1
	system-configuration-sys@0.6.0
	tap@1.0.1
	tcmalloc@0.3.0
	tcmalloc-sys@0.3.0
	tempfile@3.12.0
	terminal_size@0.3.0
	thiserror@1.0.63
	thiserror-impl@1.0.63
	thread-id@4.2.2
	thread_local@1.1.8
	time@0.3.36
	time-core@0.1.2
	time-macros@0.2.18
	tinystr@0.7.6
	tinyvec@1.8.0
	tinyvec_macros@0.1.1
	tokio@1.40.0
	tokio-macros@2.4.0
	tokio-native-tls@0.3.1
	tokio-rustls@0.24.1
	tokio-rustls@0.26.0
	tokio-tfo@0.3.1
	tokio-util@0.7.12
	tower@0.4.13
	tower-layer@0.3.3
	tower-service@0.3.3
	tracing@0.1.40
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing-log@0.2.0
	tracing-subscriber@0.3.18
	try-lock@0.2.5
	tun2@3.1.4
	typemap-ors@1.0.0
	typenum@1.17.0
	ucd-trie@0.1.6
	unicode-bidi@0.3.15
	unicode-ident@1.0.13
	unicode-normalization@0.1.24
	universal-hash@0.5.1
	unsafe-any-ors@1.0.0
	unsafe-libyaml@0.2.11
	untrusted@0.7.1
	untrusted@0.9.0
	url@2.5.2
	utf16_iter@1.0.5
	utf8_iter@1.0.4
	utf8parse@0.2.2
	uuid@1.10.0
	valuable@0.1.0
	vcpkg@0.2.15
	version_check@0.9.5
	walkdir@2.5.0
	want@0.3.1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen@0.2.93
	wasm-bindgen-backend@0.2.93
	wasm-bindgen-futures@0.4.43
	wasm-bindgen-macro@0.2.93
	wasm-bindgen-macro-support@0.2.93
	wasm-bindgen-shared@0.2.93
	web-sys@0.3.70
	webpki-roots@0.25.4
	webpki-roots@0.26.6
	widestring@1.1.0
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.9
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows-core@0.52.0
	windows-registry@0.2.0
	windows-result@0.2.0
	windows-service@0.7.0
	windows-strings@0.1.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-sys@0.59.0
	windows-targets@0.48.5
	windows-targets@0.52.6
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.6
	winreg@0.50.0
	wintun-bindings@0.7.7
	write16@1.0.0
	writeable@0.5.5
	wyz@0.5.1
	xdg@2.5.2
	yoke@0.7.4
	yoke-derive@0.7.4
	zerocopy@0.7.35
	zerocopy-derive@0.7.35
	zerofrom@0.1.4
	zerofrom-derive@0.1.4
	zeroize@1.8.1
	zerovec@0.10.4
	zerovec-derive@0.10.3
	zstd@0.13.2
	zstd-safe@7.2.1
	zstd-sys@2.0.13+zstd.1.5.6
"

inherit cargo linux-info systemd

MY_PV=${PV/_alpha/-alpha.}

DESCRIPTION="A Rust port of shadowsocks."
HOMEPAGE="https://github.com/shadowsocks/shadowsocks-rust"
SRC_URI="https://github.com/shadowsocks/shadowsocks-rust/archive/v${MY_PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}"

S="${WORKDIR}/${PN}-${MY_PV}"

LICENSE="MIT"
LICENSE+="
	0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD BSD-2 Boost-1.0 CC0-1.0
	ISC MIT-0 MPL-2.0 Unicode-3.0 Unicode-DFS-2016 Unlicense WTFPL-2 ZLIB
"
SLOT="0"
KEYWORDS="~amd64 ~arm64"
IUSE="redir tun"

QA_FLAGS_IGNORED="
	usr/bin/sslocal
	usr/bin/ssmanager
	usr/bin/ssurl
	usr/bin/ssservice
	usr/bin/ssserver
"

pkg_setup() {
	if use tun; then
		CONFIG_CHECK="~TUN"
		linux-info_pkg_setup
	fi
	rust_pkg_setup
}

src_configure() {
	local myfeatures=(
		$(usex redir local-redir "")
		$(usex tun local-tun "")
	)
	cargo_src_configure
}

src_install() {
	cargo_src_install

	newconfd "${FILESDIR}/shadowsocks-rust.confd" shadowsocks-rust
	dosym shadowsocks-rust /etc/conf.d/shadowsocks-rust.server
	dosym shadowsocks-rust /etc/conf.d/shadowsocks-rust.local
	newinitd "${FILESDIR}/shadowsocks-rust.initd" shadowsocks-rust
	dosym shadowsocks-rust /etc/init.d/shadowsocks-rust.server
	dosym shadowsocks-rust /etc/init.d/shadowsocks-rust.local

	systemd_newunit "${FILESDIR}/shadowsocks-rust_at.service" shadowsocks-rust@.service
	systemd_newunit "${FILESDIR}/shadowsocks-rust-server_at.service" shadowsocks-rust-server@.service

	insinto "/etc/${PN}"
	doins examples/*.json
}

pkg_postinst() {
	if has_version "<sys-apps/openrc-0.56[-caps]"; then
			einfo ""
			einfo "For OpenRC users using old version(<0.56):"
			einfo "Capabilities support for old version is needed."
			einfo "Enable it by set useflag [caps] for <sys-apps/openrc-0.56."
			einfo ""
	fi
}
