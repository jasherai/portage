# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-misc/xlockmore/xlockmore-5.28.ebuild,v 1.8 2009/07/23 16:54:04 josejx Exp $

EAPI=2
inherit flag-o-matic pam

DESCRIPTION="Just another screensaver application for X"
HOMEPAGE="http://www.tux.org/~bagleyd/xlockmore.html"
SRC_URI="http://ftp.tux.org/pub/tux/bagleyd/${PN}/${P}/${P}.tar.bz2"

LICENSE="BSD GPL-2"
SLOT="0"
KEYWORDS="~alpha amd64 hppa ppc ppc64 sparc x86"
IUSE="crypt debug esd gtk motif nas opengl pam truetype xlockrc"

RDEPEND="x11-libs/libX11
	x11-libs/libXext
	x11-libs/libXpm
	x11-libs/libXt
	x11-libs/libXmu
	opengl? ( media-libs/mesa
		truetype? ( >=media-libs/ftgl-2.1.3_rc5 ) )
	truetype? ( media-libs/freetype:2 )
	pam? ( virtual/pam )
	nas? ( media-libs/nas )
	esd? ( media-sound/esound )
	motif? ( x11-libs/openmotif )
	gtk? ( >=x11-libs/gtk+-2:2 )"
DEPEND="${RDEPEND}
	dev-util/pkgconfig
	x11-proto/xineramaproto"

MAKEOPTS="${MAKEOPTS} -j1"

src_configure() {
	local myconf

	if use opengl && use truetype; then
			myconf+=" --with-ftgl"
			append-flags -DFTGL213
		else
			myconf+=" --without-ftgl"
	fi

	econf \
		--enable-vtlock \
		--enable-syslog \
		$(use_enable xlockrc) \
		$(use_enable pam) \
		--disable-use-mb \
		--enable-appdefaultdir=/usr/share/X11/app-defaults \
		$(use_with motif) \
		$(use_with debug editres) \
		$(use_with truetype freetype) \
		$(use_with truetype ttf) \
		$(use_with opengl) \
		$(use_with opengl mesa) \
		$(use_with esd esound) \
		$(use_with nas) \
		$(use_with crypt) \
		$(use_with gtk gtk2) \
		${myconf}
}

src_install() {
	einstall xapploaddir="${D}/usr/share/X11/app-defaults" \
		mandir="${D}/usr/share/man/man1" INSTPGMFLAGS="" \
		|| die "einstall failed"

	pamd_mimic_system xlock auth
	use pam && fperms 755 /usr/bin/xlock

	dohtml docs/xlock.html
	dodoc README docs/{3d.howto,cell_automata,HACKERS.GUIDE,Purify,Revisions,TODO}
}

pkg_postinst() {
	ewarn "xlockmore doesn't support multibyte or unicode password(s)"
	ewarn "see http://bugs.gentoo.org/277061 for more information"
}
