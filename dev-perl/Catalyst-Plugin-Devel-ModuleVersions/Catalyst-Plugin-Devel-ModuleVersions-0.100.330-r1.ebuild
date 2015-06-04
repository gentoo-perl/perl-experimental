# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=ANDREMAR
MODULE_VERSION=0.100330
inherit perl-module

DESCRIPTION="Dump your loaded module versions to the debug-screen"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

PERL_RM_FILES=(
	t/release-pod-syntax.t
	t/release-pod-coverage.t
	t/author/pod-coverage.t
	t/author/pod.t
)
RDEPEND="
	dev-perl/MRO-Compat
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		dev-perl/Catalyst-Runtime
		virtual/perl-Getopt-Long
		virtual/perl-Pod-Usage
		dev-perl/Test-MockObject
		virtual/perl-Test-Simple
		|| ( >=virtual/perl-Test-Simple-1.1.10 dev-perl/Test-use-ok )
		dev-perl/Test-WWW-Mechanize-Catalyst
	)
"
