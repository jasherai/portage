# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-admin/eselect-mpost/eselect-mpost-0.1.ebuild,v 1.9 2009/03/07 11:32:05 fauli Exp $

inherit eutils

DESCRIPTION="mpost module for eselect"
HOMEPAGE="http://www.gentoo.org/proj/en/eselect/"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 hppa ~ia64 ~ppc ~ppc64 sparc x86 ~x86-fbsd"

IUSE=""
DEPEND=""
# Depend on texlive-core-2008 that allows usage of this module, otherwise it
# will not work so nicely.
RDEPEND=">=app-admin/eselect-1.0.5
	>=app-text/texlive-core-2008"

src_install() {
	local MODULEDIR="/usr/share/eselect/modules"
	local MODULE="mpost"
	dodir ${MODULEDIR}
	insinto ${MODULEDIR}
	newins "${FILESDIR}/${MODULE}.eselect-${PVR}" ${MODULE}.eselect || die "failed to install"
}
