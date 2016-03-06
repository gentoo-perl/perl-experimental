# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=EDENC
MODULE_VERSION=0.10
inherit perl-module

DESCRIPTION="Wrap system command binaries the Moose way"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Moose-0.900.0
	>=virtual/perl-IPC-Cmd-0.42
	dev-perl/IPC-Run
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
