# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/Term-ReadLine-Gnu/Term-ReadLine-Gnu-1.18.ebuild,v 1.1 2009/03/01 12:45:13 tove Exp $

MODULE_AUTHOR=HAYASHI
inherit perl-module

DESCRIPTION="GNU Readline XS library wrapper"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~sparc ~x86"
IUSE=""

DEPEND="sys-libs/readline
		dev-lang/perl"
RDEPEND="${DEPEND}"

#SRC_TEST="do"
