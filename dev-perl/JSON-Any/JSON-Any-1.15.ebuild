# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="JSON::Any - Wrapper Class for the various JSON classes."
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/P/PE/PERIGRIN/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc x86"
RESTRICT="nomirror"

IUSE="json-xs json-syck"
DEPEND="
	>=dev-perl/JSON-2.02
	json-xs? ( >=dev-perl/JSON-XS-2.01 )
	json-syck? ( dev-perl/YAML-Syck )
"

