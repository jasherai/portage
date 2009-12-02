# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdesdk-misc/kdesdk-misc-4.3.4.ebuild,v 1.1 2009/12/01 10:29:01 wired Exp $

EAPI="2"

KMNAME="${PN/-*/}"
KMNOMODULE="true"

inherit kde4-meta

DESCRIPTION="KDE miscellaneous SDK tools"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~x86"
IUSE="debug +handbook"

KMEXTRA="
	kmtrace/
	kpartloader/
	kprofilemethod/
	kspy/
	kunittest/
	poxml/
	scheck/
"
