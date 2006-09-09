# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit kde-base

need-kde 3.5

KDELOOKVER="23579"
DESCRIPTION="KDE window decoration as used in SuSE 9.3/10.0/10.1 - improved"
HOMEPAGE="http://www.kde-look.org/content/show.php?content=23579"
SRC_URI="http://www.gerdfleischer.de/kwin-decor-suse2/${P}.tar.bz2"
RESTRICT="nomirror"

LICENSE="GPL-2"
SLOT="$KDEMAJORVER.$KDEMINORVER"
KEYWORDS="~x86 ~amd64 ~sparc ~ppc"

PATCHES="${FILESDIR}/kwin-decor-suse2-disabletitlebarlogo.patch"

