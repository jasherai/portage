# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/cmdparse/cmdparse-2.0.2.ebuild,v 1.5 2009/05/31 19:57:42 maekke Exp $

inherit ruby gems

IUSE=""

DESCRIPTION="Advanced command line parser supporting commands"
HOMEPAGE="http://cmdparse.rubyforge.org/"
SRC_URI="http://gems.rubyforge.org/gems/${P}.gem"

KEYWORDS="~amd64 ~ia64 ppc64 x86"
LICENSE="GPL-2"
SLOT="0"

USE_RUBY="ruby18"
