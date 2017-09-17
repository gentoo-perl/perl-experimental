# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=MSCHWERN
MODULE_VERSION=v2.13.1
inherit perl-module

DESCRIPTION='Fix as much of Perl 5 as possible in one pragma'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
# IPC::Open3 -> perl
# Text::Wrap -> Text-Tabs+Wrap
# YAML::Any -> yaml
# Devel::Declare::MethodInstaller::Simple -> Devel-Declare
# true::VERSION -> true
# NEED NORMAL: IPC::System::Simple
RDEPEND="
	>=dev-perl/Modern-Perl-1.30.0
	>=dev-perl/CLASS-1.0.0
	>=dev-perl/Child-0.9.0
	>=dev-perl/DateTime-0.470.0
	>=dev-perl/DateTime-Format-Epoch-0.110.0
	>=dev-perl/DateTime-TimeZone-Tzfile-0.2.0
	>=virtual/perl-Module-Load-0.160.0
	>=virtual/perl-Text-Tabs+Wrap-2009.30.500
	>=dev-perl/Try-Tiny-0.20.0
	>=virtual/perl-autodie-2.120.0
	>=dev-perl/IPC-System-Simple-1.18
	>=dev-perl/autobox-2.800.0
	>=dev-perl/autobox-Core-1.0.0
	>=virtual/perl-parent-0.221.0
	>=dev-perl/File-chdir-0.100.200
	>=dev-perl/autobox-dump-20090426.0.0
	>=dev-perl/autobox-List-Util-20090429.0.0
	>=dev-perl/Want-0.180.0
	>=dev-perl/autovivification-0.6.0
	>=virtual/perl-version-0.770.0
	>=dev-perl/Perl6-Caller-0.100.0
	>=dev-perl/Taint-Util-0.60.0
	>=dev-perl/Hash-Merge-Simple-0.40.0
	>=dev-perl/List-MoreUtils-0.220.0
	>=dev-perl/indirect-0.240.0
	>=dev-perl/JSON-2.170.0
	>=dev-perl/YAML-0.700.0
	>=virtual/perl-Digest-SHA-5.450.0
	>=virtual/perl-Digest-MD5-2.360.0
	>=dev-perl/Object-ID-0.1.0
	>=dev-perl/Devel-Declare-0.6.9
	>=dev-perl/true-0.160.0
	>=dev-perl/Capture-Tiny-0.60.0
	>=dev-perl/utf8-all-0.15.0
	>=dev-perl/Carp-Fix-1_25-1.0.0
	>=dev-perl/Hash-StoredIterator-0.7.0
	>=dev-perl/Hash-FieldHash-0.60.0
	>=dev-perl/Path-Tiny-0.36.0
	>=dev-perl/Import-Into-1.2.3
"
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-0.360.0
	>=virtual/perl-ExtUtils-CBuilder-0.260.0
	test? (
		>=virtual/perl-Test-Simple-0.880.0
		>=dev-perl/Test-Warn-0.110.0
		>=dev-perl/Test-Output-0.160.0
	)
"
