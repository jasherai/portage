# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kmouth/kmouth-4.3.1.ebuild,v 1.1 2009/09/01 15:39:47 tampakrap Exp $

EAPI="2"

KMNAME="kdeaccessibility"
KMMODULE="kmouth"

inherit kde4-meta

DESCRIPTION="KDE application that reads what you type out loud. Doesn't include a speech synthesizer."
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~x86"
IUSE="debug +handbook"
