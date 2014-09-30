# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=GSHANK
MODULE_VERSION=0.40057
inherit perl-module

DESCRIPTION='HTML forms using Moose'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
# HTML::TreeBuilder -> HTML-Tree
# Carp -> perl
RDEPEND="
	>=dev-perl/Class-Load-0.60.0
	>=dev-perl/Data-Clone-0.4.0
	dev-perl/DateTime
	dev-perl/DateTime-Format-Strptime
	dev-perl/Email-Valid
	dev-perl/File-ShareDir
	virtual/perl-File-Spec
	>=dev-perl/HTML-Tree-3.230.0
	dev-perl/JSON
	>=dev-perl/List-AllUtils-0.70.0
	>=virtual/perl-Locale-Maketext-1.90.0
	>=dev-perl/Moose-2.0.700
	>=dev-perl/MooseX-Getopt-0.160.0
	>=dev-perl/MooseX-Types-0.200.0
	dev-perl/MooseX-Types-Common
	>=dev-perl/MooseX-Types-LoadableClass-0.6.0
	dev-perl/Sub-Exporter
	dev-perl/Sub-Name
	dev-perl/Try-Tiny
	dev-perl/aliased
	>=dev-perl/namespace-autoclean-0.90.0
"
# Test::More -> perl-Test-Simple
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	>=dev-perl/File-ShareDir-Install-0.30.0
	${RDEPEND}
	test? (
		dev-perl/PadWalker
		dev-perl/Test-Differences
		dev-perl/Test-Exception
		>=dev-perl/Test-Memory-Cycle-1.40.0
		>=virtual/perl-Test-Simple-0.940.0
	)
"
SRC_TEST="do parallel"
