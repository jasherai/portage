# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kurifilter-plugins/kurifilter-plugins-4.2.2.ebuild,v 1.1 2009/04/12 06:17:35 alexxy Exp $

EAPI="2"

KMNAME="kdebase-runtime"
inherit kde4-meta

DESCRIPTION="KDE: Plugins to manage filtering URIs."
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE="debug"
RESTRICT="test" # Tests segfault. Last checked on 4.0.3.
