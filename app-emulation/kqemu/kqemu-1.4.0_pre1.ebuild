# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-emulation/kqemu/kqemu-1.4.0_pre1.ebuild,v 1.1 2009/03/06 22:18:01 lu_zero Exp $

inherit eutils flag-o-matic linux-mod toolchain-funcs

MY_PV=${PV/_/}
MY_P=${PN}-${MY_PV}

DESCRIPTION="Multi-platform & multi-targets cpu emulator and dynamic translator kernel fast execution module"
HOMEPAGE="http://bellard.org/qemu/"
SRC_URI="http://bellard.org/qemu/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="-* ~amd64 ~x86"
RESTRICT="strip"
IUSE=""

S="${WORKDIR}/$MY_P"

DEPEND=""
RDEPEND=""

pkg_setup() {
	MODULE_NAMES="kqemu(misc:${S})"
	linux-mod_pkg_setup
}

src_unpack() {
	unpack ${A}
	cd "${S}"
	sed -i 's:MODULE_PARM(\([^,]*\),"i");:module_param(\1, int, 0);:' kqemu-linux.c
}

src_compile() {
	#Let the application set its cflags
	unset CFLAGS

	# Switch off hardened tech
	filter-flags -fpie -fstack-protector

	./configure --kernel-path="${KV_DIR}" \
		|| die "could not configure"

	make
}

src_install() {
	linux-mod_src_install

	# udev rule
	dodir /etc/udev/rules.d/
	echo 'KERNEL=="kqemu*", NAME="%k", GROUP="qemu", MODE="0660"' > ${D}/etc/udev/rules.d/48-qemu.rules

	# Module doc
	dodoc "${S}/README"
	dohtml "${S}/kqemu-doc.html"

	# module params
	dodir /etc/modules.d
	echo "options kqemu major=0" > ${D}/etc/modules.d/kqemu
}

pkg_postinst() {
	linux-mod_pkg_postinst
	enewgroup qemu
	elog "Make sure you have the kernel module loaded before running qemu"
	elog "and your user is in the 'qemu' group"
	case ${CHOST} in
		*-darwin*) elog "Just run 'niutil -appendprop / /groups/qemu users <USER>'";;
		*-freebsd*|*-dragonfly*) elog "Just run 'pw groupmod qemu -m <USER>'";;
		*) elog "Just run 'gpasswd -a <USER> qemu', then have <USER> re-login.";;
	esac
}
