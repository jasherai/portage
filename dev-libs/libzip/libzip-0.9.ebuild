# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-libs/libzip/libzip-0.9.ebuild,v 1.3 2009/03/06 23:28:58 jer Exp $

DESCRIPTION="Library for manipulating zip archives"
HOMEPAGE="http://www.nih.at/libzip/"
SRC_URI="http://www.nih.at/libzip/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~mips ~ppc ~ppc64 ~x86"
IUSE=""

src_install() {
	emake DESTDIR="${D}" install || die "install failed"
	dodoc NEWS README THANKS AUTHORS
}
