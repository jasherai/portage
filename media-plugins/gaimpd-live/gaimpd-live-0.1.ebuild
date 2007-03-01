# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_REPO_URI="https://svn.ayeon.org/gaimpd/trunk/"
ESVN_BOOTSTRAP="autoconf"
inherit subversion

DESCRIPTION="A gaim plugin for MPD"
HOMEPAGE="http://sarine.nl"
LICENSE="GPL-2"

KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~ppc-macos ~s390 ~sh ~sparc ~sparc-fbsd ~x86 ~x86-fbsd"
SLOT="0"
IUSE="debug"

DEPEND="=net-im/gaim-2*
	|| ( media-sound/gmpc-live >=media-sound/gmpc-0.14.0 )
	|| ( media-libs/libmpd-live media-libs/libmpd )"

src_compile() {
	econf $(use_enable debug) || 'Configure failed.'
	emake || 'Make failed.'
}

src_install() {
	emake install DESTDIR=${D} || die
}

pkg_postinst() {
	einfo "If you're installing this with gaim-1.x this"
	einfo "plugin may not work as expected, please contact"
	einfo "the author if something unexpected occurs"
}
