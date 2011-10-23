# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=RWSTAUNER
MODULE_VERSION=0.922
inherit perl-module

DESCRIPTION="Information about a perl module distribution"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Archive-Zip-1.300.0
	virtual/perl-parent
	>=dev-perl/Path-Class-0.240.0
	>=dev-perl/CPAN-DistnameInfo-0.120.0
	virtual/perl-Module-Metadata
	virtual/perl-Scalar-List-Utils
	>=virtual/perl-Archive-Tar-1.0.0
	>=virtual/perl-File-Temp-0.190.0
	>=dev-perl/File-Spec-Native-1.2.0
	>=virtual/perl-CPAN-Meta-2.100.0
	>=dev-perl/Try-Tiny-0.90.0
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		>=dev-perl/Test-MockObject-1.90.0
		dev-perl/Test-Fatal
		virtual/perl-File-Spec
		>=virtual/perl-Test-Simple-0.960.0
	)
"

SRC_TEST=do
