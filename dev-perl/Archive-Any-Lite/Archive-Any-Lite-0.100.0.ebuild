# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=ISHIGAKI
MODULE_VERSION=0.10
inherit perl-module

DESCRIPTION="simple CPAN package extractor"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
# IO::Uncompress::Bunzip2 -> IO-Compress
PERL_RM_FILES=(
	t/99_podcoverage.t
	t/99_pod.t
)
RDEPEND="
	>=virtual/perl-Archive-Tar-1.760.0
	dev-perl/Archive-Zip
	virtual/perl-File-Spec
	>=virtual/perl-File-Temp-0.190.0
	virtual/perl-IO-Compress
	virtual/perl-IO-Zlib
"
DEPEND="${RDEPEND}
	>=dev-perl/ExtUtils-MakeMaker-CPANfile-0.60.0
	test? (
		>=virtual/perl-Test-Simple-0.820.0
		>=dev-perl/Test-UseAllModules-0.100.0
	)
"
