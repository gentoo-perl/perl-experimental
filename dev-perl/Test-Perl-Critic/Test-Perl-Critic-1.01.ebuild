# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=THALJEF
MODULE_SECTION=testperlcritic
inherit perl-module

DESCRIPTION="Use Perl::Critic in test programs"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/Perl-Critic"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build"

SRC_TEST=do
