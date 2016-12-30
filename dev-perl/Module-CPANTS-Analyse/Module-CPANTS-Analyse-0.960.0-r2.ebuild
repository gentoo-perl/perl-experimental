# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ISHIGAKI
MODULE_VERSION=0.96
inherit perl-module

DESCRIPTION='Generate Kwalitee ratings for a distribution'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# CPAN::Meta::Validator -> CPAN-Meta
# Software::License::CC_BY_SA_3_0 -> Software-License-CCpack
RDEPEND="
	>=dev-perl/Array-Diff-0.40.0
	>=dev-perl/Archive-Any-Lite-0.60.0
	>=virtual/perl-Archive-Tar-1.480.0
	>=dev-perl/Class-Accessor-0.190.0
	>=dev-perl/CPAN-DistnameInfo-0.60.0
	>=virtual/perl-CPAN-Meta-YAML-0.8.0
	>=virtual/perl-CPAN-Meta-2.133.380
	>=dev-perl/File-Find-Object-0.2.1
	>=dev-perl/IO-Capture-0.50.0
	dev-perl/JSON-MaybeXS
	>=dev-perl/Module-ExtractUse-0.330.0
	>=dev-perl/Module-Pluggable-2.960.0
	dev-perl/Set-Scalar
	>=dev-perl/Software-License-0.103.8
	dev-perl/Software-License-CCpack
	virtual/perl-Text-Balanced
	>=virtual/perl-version-0.730.0
"
DEPEND="
	${RDEPEND}
	>=dev-perl/ExtUtils-MakeMaker-CPANfile-0.60.0
	test? (
		virtual/perl-File-Spec
		>=virtual/perl-Test-Simple-0.880.0
		dev-perl/Test-FailWarnings
	)
"
