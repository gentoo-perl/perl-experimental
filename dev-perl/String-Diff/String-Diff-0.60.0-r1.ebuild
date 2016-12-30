# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=YAPPO
MODULE_VERSION=0.06
inherit perl-module

DESCRIPTION='Simple diff to String'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="
	dev-perl/Algorithm-Diff
"
DEPEND="
	$DEPEND
	>=virtual/perl-ExtUtils-MakeMaker-6.360.0
	dev-perl/Test-Base
	virtual/perl-Test-Simple
	dev-perl/YAML
"
SRC_TEST="do"
