# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.05
inherit perl-module

DESCRIPTION='Memcached storage backend for'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
# Catalyst::ClassData -> Catalyst-Runtime
RDEPEND="
	dev-perl/Cache-Memcached-Managed
	dev-perl/Catalyst-Runtime
	>=dev-perl/Catalyst-Plugin-Session-0.260.0
	dev-perl/MRO-Compat
	dev-perl/Moose
	dev-perl/MooseX-Emulate-Class-Accessor-Fast
	dev-perl/namespace-clean
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.360.0
"
PERL_RM_FILES=(
	t/02pod.t
	t/03podcoverage.t
)
SRC_TEST="do"
