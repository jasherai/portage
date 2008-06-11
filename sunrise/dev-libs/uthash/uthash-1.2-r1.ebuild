# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit toolchain-funcs

DESCRIPTION="An easy-to-use hash implementation for C programmers"
HOMEPAGE="http://uthash.sourceforge.net"
SRC_URI="mirror://sourceforge/uthash/${P}.tar.bz2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc"
IUSE="test"

DEPEND="test? ( dev-lang/perl )"
RDEPEND=""

src_test() {
	cd tests
	sed -i "/CFLAGS/s/-g/${CFLAGS}/" Makefile || die "sed cflags failed"
	emake CC="$(tc-getCC)" || die "emake failed"
}

src_install() {
	insinto /usr/include
	doins src/uthash.h

	dodoc doc/txt/userguide.txt
	doman doc/man/uthash.3
}
