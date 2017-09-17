# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=APEIRON
MODULE_VERSION="0.28"
inherit perl-module

DESCRIPTION="A glimpse at an Enlightened Perl (script hackery)"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+smartcomments +progressbarsimple +ioall"
COMMON_DEPEND="
	smartcomments? ( dev-perl/Smart-Comments )
	progressbarsimple? ( dev-perl/Term-ProgressBar-Simple )
	ioall? ( dev-perl/IO-All )
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
