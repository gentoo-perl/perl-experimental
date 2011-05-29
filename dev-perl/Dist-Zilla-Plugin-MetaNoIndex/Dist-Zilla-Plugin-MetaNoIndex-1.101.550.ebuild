# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=MJGARDNER
MODULE_VERSION=1.101550
inherit perl-module

DESCRIPTION="Stop CPAN from indexing stuff"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	>=dev-perl/Dist-Zilla-4.101.550
	dev-perl/Moose
	dev-perl/Readonly
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.52
	virtual/perl-File-Spec
	dev-perl/Data-PowerSet
	virtual/perl-File-Temp
	dev-perl/Modern-Perl
	virtual/perl-Test-Simple
	dev-perl/Test-Most
	dev-perl/text-template
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
