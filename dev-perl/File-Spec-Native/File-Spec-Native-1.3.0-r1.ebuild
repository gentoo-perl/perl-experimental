# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=RWSTAUNER
MODULE_VERSION=1.003
inherit perl-module

DESCRIPTION="Use native OS implementation of File::Spec from a subclass"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	virtual/perl-File-Spec
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		virtual/perl-File-Temp
		>=virtual/perl-Test-Simple-0.880.0
	)
"
