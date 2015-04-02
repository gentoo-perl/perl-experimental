# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=JJNAPIORK
MODULE_VERSION=0.35
inherit perl-module

DESCRIPTION="JSON View for your data"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
# YAML -> yaml
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.600.0
	>=dev-perl/JSON-MaybeXS-1.3.0
	dev-perl/MRO-Compat
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	test? (
		dev-perl/yaml
		virtual/perl-Test-Simple
	)
"
SRC_TEST=do
