# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.004
inherit perl-module

DESCRIPTION="Temporary directories that stick around when tests fail"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Cwd ->  File-Spec
# File::Spec::Functions -> File-Spec
# File::Copy -> perl
RDEPEND="
	virtual/perl-Carp
	virtual/perl-File-Spec
	>=virtual/perl-File-Path-2.10.0
	>=virtual/perl-Exporter-5.570.0
	virtual/perl-File-Temp
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.170.0
	test? (
		virtual/perl-Test-Simple
	)
"
