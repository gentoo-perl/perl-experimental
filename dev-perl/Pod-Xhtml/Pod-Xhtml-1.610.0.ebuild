# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=BBC
MODULE_VERSION=1.61
inherit perl-module

DESCRIPTION="Generate well-formed XHTML documents from POD format documentation"

SLOT="0"
LICENSE="GPL-1"
KEYWORDS="~amd64 ~x86"

IUSE="test"
PERL_RM_FILES=(
	t/pod.t
	t/pod_coverage.t
)
# Pod::ParseUtils -> Pod-Parser
# URI::Escape -> URI
# Test::Assertions::TestScript -> Test-Assertions
RDEPEND="
	virtual/perl-Pod-Parser
	dev-perl/URI
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		virtual/perl-Test-Simple
		dev-perl/Test-Assertions
	)"
