# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=FLORA
MODULE_VERSION=0.04
inherit perl-module

DESCRIPTION="Opaque, extensible XS pointer backed objects using sv_magic"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Scalar::Utils -> Scalar-List-Utils
# Test::More    -> Test-Simple
RDEPEND="
	virtual/perl-parent
"
DEPEND="
	${RDEPEND}
	>=dev-perl/ExtUtils-Depends-0.302.0
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	test? (
		virtual/perl-Scalar-List-Utils
		dev-perl/Test-Fatal
		virtual/perl-Test-Simple
		|| ( >=virtual/perl-Test-Simple-1.1.10 dev-perl/Test-use-ok )
	)
"
