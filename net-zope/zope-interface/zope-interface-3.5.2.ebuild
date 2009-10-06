# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-zope/zope-interface/zope-interface-3.5.2.ebuild,v 1.2 2009/10/05 16:41:38 armin76 Exp $

EAPI="2"
SUPPORT_PYTHON_ABIS="1"

inherit distutils

MY_PN="${PN/-/.}"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Interfaces for Python"
HOMEPAGE="http://pypi.python.org/pypi/zope.interface"
SRC_URI="http://pypi.python.org/packages/source/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"
LICENSE="ZPL"
SLOT="0"
KEYWORDS="alpha amd64 arm ~hppa ia64 ~mips ppc ~ppc64 s390 sh sparc x86 ~x86-fbsd"
IUSE=""

RDEPEND=""
DEPEND="dev-python/setuptools
	!net-zope/zodb"
RESTRICT_PYTHON_ABIS="3.*"

S="${WORKDIR}/${MY_P}"

PYTHON_MODNAME="${PN/-/\/}"
DOCS="CHANGES.txt README.txt src/zope/interface/*.txt"

src_install() {
	distutils_src_install
	rm -fr "${D}"usr/$(get_libdir)/python*/zope/interface/{tests,common/tests,*.txt,*.c}
}
