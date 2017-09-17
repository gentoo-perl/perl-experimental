# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=FLORA
MODULE_VERSION="0.10"
inherit perl-module

DESCRIPTION="Multi Method Dispatch based on Moose type constraints"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
PERL_RM_FILES=(
	"t/release-pod-coverage.t"
	"t/release-pod-syntax.t"
)
RDEPEND="
	>=dev-perl/Devel-Declare-0.4.0
	dev-perl/Devel-PartialDump
	dev-perl/Moose
	>=dev-perl/MooseX-Method-Signatures-0.290.0
	>=dev-perl/MooseX-Types-VariantTable-0.30.0
	dev-perl/Sub-Install
	dev-perl/aliased
	dev-perl/namespace-autoclean
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
