# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/HTTP-Response-Encoding/HTTP-Response-Encoding-0.05.ebuild,v 1.2 2008/10/27 13:24:13 fmccor Exp $

MODULE_AUTHOR=DANKOGAI
inherit perl-module

DESCRIPTION="Adds encoding() to HTTP::Response"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~sparc ~x86"
IUSE="test"

RDEPEND="dev-lang/perl
	dev-perl/libwww-perl"
DEPEND="${RDEPEND}
	test? ( dev-perl/Test-Pod
		dev-perl/Test-Pod-Coverage )"

SRC_TEST=do
