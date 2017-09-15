# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=ISHIGAKI
MODULE_VERSION=0.06
inherit perl-module

DESCRIPTION="cpanfile support for EUMM"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	virtual/perl-File-Spec
	>=virtual/perl-ExtUtils-MakeMaker-6.170.0
	dev-perl/Module-CPANfile
	>=virtual/perl-version-0.760.0
"
DEPEND="${RDEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.880.0
	)
"
