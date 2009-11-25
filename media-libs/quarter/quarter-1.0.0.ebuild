# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-libs/quarter/quarter-1.0.0.ebuild,v 1.1 2009/11/24 17:21:02 ayoy Exp $

EAPI="2"

MY_P="${P/q/Q}"

DESCRIPTION="A glue between Nokia Qt4 and Coin3D"
HOMEPAGE="http://www.coin3d.org/lib/quarter"
SRC_URI="ftp://ftp.coin3d.org/pub/coin/src/all/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug doc static-libs"

RDEPEND="
	>=media-libs/coin-3.0.0[javascript]
	x11-libs/qt-core:4
	x11-libs/qt-gui:4
	x11-libs/qt-opengl:4
"
DEPEND="${RDEPEND}
	doc? ( app-doc/doxygen )
	dev-util/pkgconfig
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	econf \
		htmldir="${ROOT}usr/share/doc/${PF}/html" \
		--enable-shared \
		$(use_enable debug) \
		$(use_enable debug symbols) \
		$(use_enable doc html) \
		$(use_enable static-libs static)
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
	dodoc AUTHORS NEWS README || die "dodoc failed"
	# Do not install .la files
	rm -f "${D}"/usr/lib*/*.la "${D}"/usr/lib*/qt4/plugins/designer/*.la
}
