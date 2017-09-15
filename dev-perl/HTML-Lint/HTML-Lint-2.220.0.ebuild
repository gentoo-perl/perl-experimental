# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=PETDANCE
MODULE_VERSION=2.22
inherit perl-module

DESCRIPTION="Check for HTML errors in a string or file"

SLOT="0"
KEYWORDS="~amd64 ~x86"
LICENSE="Artistic-2"

IUSE="test"
# Test::More, Test::Builder -> Test-Simple
# HTML::Entities -> HTML-Parser
PERL_RM_FILES=(
	t/12-html_fragment_ok.t # https://github.com/petdance/html-lint/issues/40
)
RDEPEND="
	virtual/perl-Exporter
	>=dev-perl/HTML-Parser-3.470.0
	>=dev-perl/HTML-Tagset-3.30.0
	dev-perl/libwww-perl
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? ( virtual/perl-Test-Simple )
"
