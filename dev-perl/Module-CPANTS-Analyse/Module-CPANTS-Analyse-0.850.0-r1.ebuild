# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=CHORNY
MODULE_VERSION="0.85"
inherit perl-module

DESCRIPTION="Generate Kwalitee ratings for a distribution"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

PATCHES=(
	"${FILESDIR}/${MODULE_VERSION}/use_test_cpan_meta_yaml_version.patch"
)
COMMON_DEPEND="
	>=dev-perl/Class-Accessor-0.19
	>=dev-perl/Archive-Any-0.06
	>=virtual/perl-Archive-Tar-1.30
	>=dev-perl/CPAN-DistnameInfo-0.60.0
	>=virtual/perl-Pod-Simple-2.02
	>=dev-perl/YAML-Syck-0.95
	>=dev-perl/Module-ExtractUse-0.18
	>=virtual/perl-Module-Pluggable-2.96
	>=dev-perl/IO-Capture-0.05
	>=dev-perl/Array-Diff-0.40.0
	dev-perl/Test-CPAN-Meta-YAML
	>=virtual/perl-version-0.73
	dev-perl/List-MoreUtils
	dev-perl/File-Find-Rule
	dev-perl/Readonly
	>=dev-perl/Software-License-0.3
	dev-perl/File-Slurp
	>=dev-perl/Text-CSV_XS-0.45
	dev-perl/libwww-perl
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Test-Simple
	dev-perl/Test-Deep
	>=dev-perl/Test-Warn-0.11
	dev-perl/Test-NoWarnings
	virtual/perl-Module-Build
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
