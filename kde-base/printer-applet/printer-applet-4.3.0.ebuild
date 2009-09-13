# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/printer-applet/printer-applet-4.3.0.ebuild,v 1.3 2009/09/12 10:31:04 armin76 Exp $

EAPI="2"

KMNAME="kdeutils"
inherit kde4-meta

DESCRIPTION="KDE printer system tray utility"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~x86"
IUSE=""

DEPEND="
	>=app-admin/system-config-printer-common-1.1.8
	app-misc/hal-cups-utils
	>=kde-base/pykde4-${PV}:${SLOT}[kdeprefix=]
"
RDEPEND="${DEPEND}"
