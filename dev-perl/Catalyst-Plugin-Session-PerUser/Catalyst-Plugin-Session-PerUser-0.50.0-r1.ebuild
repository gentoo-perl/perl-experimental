# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION="0.05"
inherit perl-module

DESCRIPTION="Per user sessions (instead of per browser sessions)."

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
PERL_RM_FILES=(
	t/99_pod.t
	t/99_podcoverage.t
)
RDEPEND="
	dev-perl/Catalyst-Plugin-Authentication
	>=dev-perl/Catalyst-Plugin-Session-0.60.0
	dev-perl/Hash-Merge
	dev-perl/MRO-Compat
	dev-perl/Moose
	dev-perl/Object-Signature
	dev-perl/namespace-autoclean
"
DEPEND="${RRDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
"
