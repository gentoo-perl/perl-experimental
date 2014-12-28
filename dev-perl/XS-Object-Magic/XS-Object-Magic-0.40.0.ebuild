# Copyright 2014 Julian Ospald <hasufell@gentoo.org>
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR="FLORA"
MODULE_VERSION="0.04"
inherit perl-module

DESCRIPTION="Opaque, extensible XS pointer backed objects using sv_magic"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="virtual/perl-parent"
DEPEND="
	dev-perl/extutils-depends
	virtual/perl-ExtUtils-MakeMaker
	virtual/perl-Scalar-List-Utils
	test? (
		dev-perl/Test-Fatal
		dev-perl/Test-use-ok
	)
"

SRC_TEST="do"
