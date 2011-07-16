# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION="0.43"
inherit perl-module

DESCRIPTION="A Pure Perl interface to Git repositories"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	virtual/perl-Archive-Extract
	virtual/perl-Compress-Raw-Zlib
	virtual/perl-IO-Compress
	dev-perl/Data-Stream-Bulk
	dev-perl/DateTime
	dev-perl/Digest-SHA1
	dev-perl/File-Find-Rule
	dev-perl/IO-Digest
	dev-perl/Moose
	dev-perl/MooseX-StrictConstructor
	dev-perl/MooseX-Types-Path-Class
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
