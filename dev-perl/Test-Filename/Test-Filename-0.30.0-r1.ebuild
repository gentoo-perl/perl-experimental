# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.03
inherit perl-module

DESCRIPTION="Portable filename comparison"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# File::Find -> perl
# File::Spec::Functions -> File-Spec
# Test::More -> Test-Simple
# Test::Builder::Module -> Test-Simple
RDEPEND="
	dev-perl/Path-Tiny
	virtual/perl-Test-Simple
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	${RDEPEND}
	test? (
		virtual/perl-File-Spec
		virtual/perl-File-Temp
		|| ( >=virtual/perl-Test-Simple-1.1.10 dev-perl/Test-Tester )
	)
"
