# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase-menu/kdebase-menu-4.3.1.ebuild,v 1.2 2009/09/12 10:36:25 armin76 Exp $

EAPI="2"

KMNAME="kdebase-runtime"
KMMODULE="kde-menu"
inherit kde4-meta

DESCRIPTION="KDE Menu query tool."
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~x86"
IUSE="debug"

RDEPEND="
	!kdeprefix? ( !kde-base/kde-menu[-kdeprefix] )
	kdeprefix? ( !kde-base/kde-menu:${SLOT} )
"
