# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=RADCLIFF
MODULE_VERSION=0.99
inherit perl-module

DESCRIPTION="Perl interface to EVDB public API"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	virtual/perl-Carp
	>=virtual/perl-Digest-MD5-0.100.0
	dev-perl/libwww-perl
	>=dev-perl/Module-Pluggable-3.0.0
	|| (
		>=dev-perl/XML-Simple-0.100.0
		dev-perl/XML-Twig
	)
	|| (
		dev-perl/JSON
		>=dev-perl/YAML-Syck-0.400.0
	)
	|| (
		dev-perl/yaml
		dev-perl/YAML-Syck
	)"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
