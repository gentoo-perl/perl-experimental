# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=GARU
MODULE_VERSION=0.36
inherit perl-module

DESCRIPTION="colored pretty-print of Perl data structures and objects"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	virtual/perl-Carp
	dev-perl/Clone-PP
	>=dev-perl/File-HomeDir-0.910.0
	virtual/perl-File-Spec
	virtual/perl-File-Temp
	>=dev-perl/Package-Stash-0.300.0
	virtual/perl-Scalar-List-Utils
	dev-perl/Sort-Naturally
	>=virtual/perl-Term-ANSIColor-3.0.0
	>=virtual/perl-version-0.770.0
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=virtual/perl-Test-Simple-0.880.0
	)
"
