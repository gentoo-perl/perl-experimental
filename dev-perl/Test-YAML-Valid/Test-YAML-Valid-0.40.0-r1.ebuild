# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
MODULE_AUTHOR=JROCKWAY
MODULE_VERSION=0.04
inherit perl-module

DESCRIPTION="Test for valid YAML"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="yaml-syck yaml-xs yaml-tiny test"
PERL_RM_FILES=(
	t/boilerplate.t
	t/pod-coverage.t
	t/pod.t
)
RDEPEND="
	>=dev-perl/yaml-0.600.0
	virtual/perl-Test-Simple
	virtual/perl-Exporter
	yaml-syck? ( >=dev-perl/YAML-Syck-0.600.0 )
	yaml-xs? ( dev-perl/YAML-LibYAML )
	yaml-tiny? ( dev-perl/YAML-Tiny )
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	test?  (
		virtual/perl-File-Spec
	)
"
