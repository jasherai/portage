# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kurifilter-plugins/kurifilter-plugins-4.3.4.ebuild,v 1.1 2009/12/01 11:14:26 wired Exp $

EAPI="2"

KMNAME="kdebase-runtime"
inherit kde4-meta

DESCRIPTION="KDE: Plugins to manage filtering URIs."
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE="debug"
RESTRICT="test" # Tests segfault. Last checked on 4.0.3.
