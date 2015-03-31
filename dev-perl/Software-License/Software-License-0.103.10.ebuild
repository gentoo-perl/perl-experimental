# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.103010
inherit perl-module

DESCRIPTION='packages that provide templated software licenses'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# IO::Dir -> IO
RDEPEND="
	virtual/perl-Carp
	dev-perl/Data-Section
	virtual/perl-File-Spec
	virtual/perl-IO
	virtual/perl-Module-Load
	dev-perl/Sub-Install
	dev-perl/text-template
	virtual/perl-parent
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		>=virtual/perl-Test-Simple-0.960.0
		dev-perl/Try-Tiny
	)
"
