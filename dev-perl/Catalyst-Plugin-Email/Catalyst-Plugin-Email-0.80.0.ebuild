# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MRAMBERG
MODULE_VERSION=0.08
inherit perl-module

DESCRIPTION="Send emails with Catalyst"

IUSE=""

SLOT="0"
KEYWORDS="~amd64 ~x86"

PERL_RM_FILES=(
	t/02pod.t
	t/03podcoverage.t
)
RDEPEND="
	>=dev-perl/Catalyst-Runtime-2.990.0
	dev-perl/Email-Send
	>=dev-perl/Email-MIME-1.902
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
