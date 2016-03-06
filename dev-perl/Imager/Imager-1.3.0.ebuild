# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=TONYC
MODULE_VERSION=1.003
inherit perl-module

DESCRIPTION="Perl extension for Generating 24 bit Images"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test minimal"
# c:ExtUtils::LibList -> ExtUtils-MakeMaker
# r:Scalar::Util -> Scalar-List-Utils
RDEPEND="
	!minimal? (
		dev-perl/Parse-RecDescent
	)
	>=virtual/perl-Scalar-List-Utils-1
	>=virtual/perl-Test-Simple-0.470.0
	virtual/perl-XSLoader
"
DEPEND="
	virtual/perl-ExtUtils-MakeMaker
	virtual/perl-File-Spec
	virtual/perl-Getopt-Long
	virtual/perl-ExtUtils-Manifest
"