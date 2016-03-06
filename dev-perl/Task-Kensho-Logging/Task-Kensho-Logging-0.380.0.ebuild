# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.38
inherit perl-module

DESCRIPTION="A Glimpse at an Enlightened Perl (Logging)"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RDEPEND="
	dev-perl/Log-Contextual
	dev-perl/Log-Dispatch
	dev-perl/Log-Log4perl
"
DEPEND="
	${RDEPEND}
	dev-perl/Module-Build-Tiny
	virtual/perl-ExtUtils-MakeMaker
	test? (
		virtual/perl-File-Spec
		virtual/perl-Test-Simple
	)
"
