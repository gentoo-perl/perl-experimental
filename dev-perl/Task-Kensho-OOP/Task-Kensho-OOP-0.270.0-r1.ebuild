# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=APEIRON
MODULE_VERSION="0.27"
inherit perl-module

DESCRIPTION="A glimpse at an Enlightened Perl (OOP modules)"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+moose"
COMMON_DEPEND="
	moose? ( dev-perl/Task-Moose )
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
