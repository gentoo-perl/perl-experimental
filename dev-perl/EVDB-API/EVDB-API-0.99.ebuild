# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=RADCLIFF
inherit perl-module

DESCRIPTION="Perl interface to EVDB public API"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND="virtual/perl-Digest-MD5
	dev-perl/libwww-perl
	>=virtual/perl-Module-Pluggable-3.0
	|| (
		dev-perl/XML-Simple
		dev-perl/XML-Twig
	)
	|| (
		dev-perl/JSON
		>=dev-perl/YAML-Syck-0.40
	)
	|| (
		dev-perl/yaml
		dev-perl/YAML-Syck
	)"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
