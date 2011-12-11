# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=RJBS
MODULE_VERSION=0.102361
inherit perl-module

DESCRIPTION="work with nestable Pod elements"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
COMMON_DEPEND="
	$(comment Encode)
	virtual/perl-Encode

	$(comment Mixin::Linewise::Readers)
	dev-perl/Mixin-Linewise

	$(comment Moose)
	dev-perl/Moose

	$(comment Moose::Autobox 0.10)
	>=dev-perl/Moose-Autobox-0.100.0

	$(comment Moose::Role 0.90)
	>=dev-perl/Moose-0.90

	$(comment Moose::Util::TypeConstraints)
	dev-perl/Moose

	$(comment MooseX::Types)
	$(comment MooseX::Types::Moose)
	dev-perl/MooseX-Types

	$(comment Pod::Eventual::Simple 0.004)
	>=dev-perl/Pod-Eventual-0.4.0

	$(comment String::RewritePrefix)
	dev-perl/String-RewritePrefix

	$(comment String::Truncate)
	dev-perl/String-Truncate

	$(comment Sub::Exporter)
	dev-perl/Sub-Exporter

	$(comment Sub::Exporter::ForMethods)
	dev-perl/Sub-Exporter-ForMethods

	$(comment Test::Deep)
	dev-perl/Test-Deep

	$(comment Test::Differences)
	dev-perl/Test-Differences

	$(comment namespace::autoclean)
	dev-perl/namespace-autoclean

	$(comment utf8)
"
DEPEND="
	${COMMON_DEPEND}
	$(comment BUILD)
	$(comment Data::Dumper)

	$(comment Test::Deep)
	dev-perl/Test-Deep

	$(comment Test::Differences)
	dev-perl/Test-Differences

	$(comment Test::More 0.96)
	>=virtual/perl-Test-Simple-0.96 $(comment 0.960.0)

	$(comment CONFIGURE)
	$(comment ExtUtils::Makemaker 6.56)
	>=virtual/perl-ExtUtils-MakeMaker-6.56 $(comment 6.560.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
