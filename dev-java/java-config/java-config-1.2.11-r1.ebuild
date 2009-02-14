# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-java/java-config/java-config-1.2.11-r1.ebuild,v 1.16 2009/02/13 18:41:37 armin76 Exp $

inherit distutils

DESCRIPTION="Java environment configuration tool"
HOMEPAGE="http://www.gentoo.org/"
#SRC_URI="mirror://gentoo/java-config-${PV}.tar.bz2"
SRC_URI="http://www.gentoo.org/~karltk/projects/java/distfiles/java-config-${PV}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 arm ia64 ppc ppc64 x86"
IUSE=""

DEPEND="!dev-java/java-config-wrapper"
RDEPEND="${DEPEND} virtual/python"

src_unpack() {
	unpack ${A}
	cd ${S}
	epatch ${FILESDIR}/${P}-shebang.patch
}

src_install() {
	distutils_src_install
	dobin ${S}/java-config
	doman ${S}/java-config.1

	doenvd ${S}/30java-finalclasspath
}
