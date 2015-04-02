# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=BROQ
MODULE_VERSION=0.51
inherit perl-module

DESCRIPTION="A Pure Perl interface to Git repositories"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
# Compress::Zlib -> IO-Compress
RDEPEND="
	dev-perl/Archive-Extract
	virtual/perl-Compress-Raw-Zlib
	dev-perl/Config-GitLike
	dev-perl/Data-Stream-Bulk
	dev-perl/DateTime
	dev-perl/File-Find-Rule
	virtual/perl-IO-Compress
	dev-perl/IO-Digest
	dev-perl/Moose
	dev-perl/MooseX-StrictConstructor
	dev-perl/MooseX-Types-Path-Class
	dev-perl/namespace-autoclean
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.360.0
	test? (
		>=virtual/perl-Test-Simple-0.880.0
		>=dev-perl/Test-utf8-0.20.0
	)
"
