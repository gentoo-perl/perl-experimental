# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=NUFFIN
MODULE_VERSION=0.04
inherit perl-module

DESCRIPTION="DWIM loading of Moose objects from YAML "

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# YAML -> yaml
RDEPEND="
	>=dev-perl/MooseX-Blessed-Reconstruct-0.30.0
	>=dev-perl/Sub-Exporter-0.982.0
	dev-perl/namespace-clean
	dev-perl/YAML
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		|| ( >=virtual/perl-Test-Simple-1.1.10 dev-perl/Test-use-ok )
	)
"
