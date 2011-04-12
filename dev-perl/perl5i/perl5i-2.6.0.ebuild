# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=MSCHWERN
MODULE_VERSION=v2.6.0
inherit perl-module

DESCRIPTION="Fix as much of Perl 5 as possible in one pragma"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-lang/perl-5.10.0
	>=dev-perl/Modern-Perl-1.03 $(comment 1.30.0)
	>=dev-perl/CLASS-1.00 $(comment  1.0.0)
	>=dev-perl/Child-0.7.0
	>=dev-perl/DateTime-0.47 $(comment 0.470.0)
	>=dev-perl/DateTime-Format-Epoch-0.110.0
	>=dev-perl/DateTime-TimeZone-Tzfile-0.2.0
	>=virtual/perl-Module-Load-0.16 $(comment 0.160.0)
	>=virtual/perl-Text-Tabs+Wrap-2009.0305 $(comment Text::Wrap 2009.30.500)
	>=dev-perl/Try-Tiny-0.02 $(comment 0.20.0)
	>=dev-perl/autodie-1.999.0
	>=dev-perl/IPC-System-Simple-1.18 $(comment 1.180.0)
	>=dev-perl/autobox-2.700.0
	>=dev-perl/autobox-Core-1.0.0
	>=virtual/perl-parent-0.221 $(comment 0.221.0)
	>=dev-perl/File-chdir-0.100.200
	>=dev-perl/autobox-dump-20090426.0.0
	>=dev-perl/autobox-List-Util-20090629.0.0
	>=dev-perl/Want-0.18 $(comment 0.180.0)
	>=dev-perl/autovivification-0.60.0
	>=virtual/perl-version-0.77 $(comment 0.770.0)
	>=dev-perl/Perl6-Caller-0.100.0
	>=dev-perl/Taint-Util-0.60.0
	>=dev-perl/Hash-Merge-Simple-0.04 $(comment 0.40.0)
	>=dev-perl/List-MoreUtils-0.22 $(comment 0.220.0)
	>=dev-perl/indirect-0.22 $(comment 0.220.0)
	>=dev-perl/JSON-2.17 $(comment 2.170.0)
	>=dev-perl/yaml-0.70 $(comment 0.700.0) $(comment YAML::Any)
	>=dev-perl/Digest-SHA1-2.09 $(comment 2.90.0)
	>=virtual/perl-Digest-MD5-2.36 $(comment 2.360.0)
	>=dev-perl/Object-ID-0.1.0
	>=dev-perl/Devel-Declare-0.006000 $(comment 0.6.0)
	>=dev-perl/true-0.16.0 $(comment true::VERSION)
	>=dev-perl/Capture-Tiny-0.06 $(comment 0.60.0)
"
DEPEND="
	${COMMON_DEPEND}
	$(comment BEGIN BUILD REQUIRES)
	>=virtual/perl-ExtUtils-CBuilder-0.26.0 $(comment 0.260.0)
	>=virtual/perl-Test-Simple-0.88 $(comment Test::More 0.880.0)
	>=dev-perl/Test-Warn-0.11 $(comment 0.110.0)
	$(comment CORE IPC::Open3)
	>=dev-perl/Test-Output-0.16 $(comment 0.160.0)
	$(comment BEGIN CONFIGURE REQUIRES)
	>=virtual/perl-Module-Build-0.36.0 $(comment 0.360.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
