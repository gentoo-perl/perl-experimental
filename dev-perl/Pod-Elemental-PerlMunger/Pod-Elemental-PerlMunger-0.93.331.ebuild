# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.093331
inherit perl-module

DESCRIPTION="a thing that takes a string of Perl and rewrites its documentation"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_eumm_configure() {
	# strict

	# warnings

	# ExtUtils::MakeMake 6.56
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.56
}
perl_eumm_build() {
	# Test::More 0.96
	echo \>=virtual/perl-Test-Simple-0.96
	# strict

	# warnings
}
perl_eumm_prereq_pm() {
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# Moose
	echo dev-perl/Moose
	# Moose::Role
	echo \>=dev-perl/Moose-0.02
	# Pod::Elemental 0.092941
	echo \>=dev-perl/Pod-Elemental-0.92.941
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
}
DEPEND="$(perl_eumm_configure) $(perl_eumm_build) $(perl_eumm_prereq_pm)"
RDEPEND="$(perl_eumm_prereq_pm)"
SRC_TEST="do"
