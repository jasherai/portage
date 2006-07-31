# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils qt3

MY_P="ManDVD-${PV}"
S="${WORKDIR}/${MY_P}"

DESCRIPTION="This is a program to simply create DVD Video"
HOMEPAGE="http://www.kde-apps.org/content/show.php?content=38347"
SRC_URI="http://csgib36.ifrance.com/FTP/${P}src.tar.gz"

LICENSE="GPL-2"
IUSE=""
SLOT="0"
KEYWORDS="~x86"

DEPEND="$(qt_min_version 3.3)
	|| ( ( x11-libs/libX11 x11-libs/libXext ) <virtual/x11-7.0 )"

RDEPEND="${DEPEND}
	>=app-cdr/cdrtools-2.01
	>=app-cdr/dvd+rw-tools-5.21.4
	>=media-gfx/imagemagick-6.2.4
	>=media-libs/netpbm-10.29
	>=media-libs/xine-lib-0.99.4
	>=media-sound/lame-3.97_beta2
	>=media-video/dvdauthor-0.6.11
	>=media-video/dvd-slideshow-0.7.5
	>=media-video/mjpegtools-1.8.0
	>=media-video/mplayer-1.0_pre8
	>=media-video/transcode-1.0.2"


src_compile() {
	${QTDIR}/bin/qmake mandvd.pro || die "qmake failed"
	emake || die "emake failed"
}

src_install() {
	dobin ${PN}
	newicon ${PN}ico.png ${PN}.png
	make_desktop_entry ${PN} ${PN} ${PN}.png "AudioVideo;QT"
}
