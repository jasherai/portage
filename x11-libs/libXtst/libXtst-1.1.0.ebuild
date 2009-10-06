# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-libs/libXtst/libXtst-1.1.0.ebuild,v 1.1 2009/10/05 17:39:37 scarabeus Exp $

inherit x-modular

DESCRIPTION="X.Org Xtst library"

KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~x86-fbsd"
IUSE=""

RDEPEND=">=x11-libs/libX11-1.3
	x11-proto/recordproto
	>=x11-libs/libXext-1.1"
DEPEND="${RDEPEND}
	>=x11-proto/xextproto-7.1.1
	>=x11-proto/inputproto-2.0"
