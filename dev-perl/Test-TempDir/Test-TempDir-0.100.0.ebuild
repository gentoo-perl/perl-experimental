# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.10
inherit perl-module

DESCRIPTION="(DEPRECATED) Temporary files support for testing."

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test minimal"
RDEPEND="
	virtual/perl-Carp
	dev-perl/File-NFSLock
	virtual/perl-File-Spec
	virtual/perl-File-Temp
	dev-perl/Moose
	dev-perl/MooseX-Types-Path-Class
	dev-perl/Path-Class
	dev-perl/Sub-Exporter
	virtual/perl-Test-Simple
	>=dev-perl/namespace-autoclean-0.80.0
	!minimal? (
		dev-perl/Directory-Scratch
	)
"
# >=File-Path-2.04

DEPEND="${DEPEND}
	>=dev-perl/Module-Build-Tiny-0.39.0
	test? (
		!minimal? (
			>=virtual/perl-CPAN-Meta-2.120.900
		)
		virtual/perl-ExtUtils-MakeMaker
		>=virtual/perl-File-Path-2.40.0
		>=virtual/perl-Test-Simple-0.880.0
		dev-perl/Test-Requires
		|| ( >=virtual/perl-Test-Simple-1.1.10 dev-perl/Test-use-ok )
	)
"
