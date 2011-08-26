# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=RJBS
MODULE_VERSION=0.312
inherit perl-module

DESCRIPTION="write command line apps with less suffering "

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
COMMON_DEPEND="
	$(comment virtual/perl-Carp)
	>=dev-perl/Class-Load-0.06
	dev-perl/Data-OptList
	$(comment virtual/perl-File-Basename)
	>=dev-perl/Getopt-Long-Descriptive-0.84.0
	dev-perl/IO-TieCombine
	virtual/perl-Module-Pluggable $(comment Module::Pluggable::Object)
	dev-perl/String-RewritePrefix
	dev-perl/Sub-Exporter
	>=dev-perl/Sub-Exporter-0.975 $(comment Sub::Exporter::Util 0.975.0)
	dev-perl/Sub-Install
	$(comment virtual/perl-Test-Abbrev)
	$(comment virtual/perl-constant)
"
DEPEND="
	$(comment build)
	$(comment virtual/perl-Data-Dumper)
	dev-perl/Test-Fatal
	>=virtual/perl-Test-Simple-0.96 $(comment 0.960.0)
	$(comment configure)
	>=virtual/perl-ExtUtils-MakeMaker-6.56 $(comment 6.560.0)
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
