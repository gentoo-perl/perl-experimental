# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BROQ
MODULE_VERSION=0.48
inherit perl-module

DESCRIPTION="A Pure Perl interface to Git repositories"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	virtual/perl-Archive-Extract
	virtual/perl-Compress-Raw-Zlib
	virtual/perl-IO-Compress $(comment Compress::Zlib)
	dev-perl/Config-GitLike
	dev-perl/Data-Stream-Bulk
	dev-perl/DateTime
	dev-perl/File-Find-Rule
	dev-perl/IO-Digest
	dev-perl/Moose
	dev-perl/MooseX-StrictConstructor
	dev-perl/MooseX-Types-Path-Class
	dev-perl/namespace-autoclean
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.88 $(comment Test::More 0.880.0)
		>=dev-perl/Test-utf8-0.02 $(comment 0.20.0)
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
