# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/Data-Dump-Streamer/Data-Dump-Streamer-2.250.ebuild,v 1.1 2011/01/25 11:09:00 tove Exp $

EAPI=3

MODULE_AUTHOR=JJORE
MODULE_VERSION=2.25
inherit perl-module

DESCRIPTION="Accurately serialize a data structure as Perl code"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="-shortcut"

RDEPEND=">=dev-perl/B-Utils-0.07"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build"

src_prepare() {
	if use shortcut; then
		echo 'yes' > "${S}/.answer";
	else
		echo 'no' > "${S}/.answer";
	fi
}
SRC_TEST=do
