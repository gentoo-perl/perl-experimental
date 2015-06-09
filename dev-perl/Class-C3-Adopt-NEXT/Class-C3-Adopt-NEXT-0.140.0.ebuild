# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.14
inherit perl-module

DESCRIPTION="Drop-in relacement for NEXT which uses Class::C3"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=virtual/perl-Scalar-List-Utils-1.330.0
	dev-perl/MRO-Compat
	virtual/perl-NEXT
"
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-Tiny-0.39.0
	test? (
		virtual/perl-ExtUtils-MakeMaker
		virtual/perl-File-Spec
		>=dev-perl/Test-Exception-0.270.0
		virtual/perl-Test-Simple
	)
"
