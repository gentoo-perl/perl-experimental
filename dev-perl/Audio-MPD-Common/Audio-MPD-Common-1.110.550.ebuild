# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR="JQUELIN"
MODULE_VERSION=1.110550
inherit perl-module

DESCRIPTION="a bunch of common helper classes for mpd"

LICENSE="Artistic GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
RDEPEND="
	$(comment requires)
	>=dev-perl/Moose-0.920.0
	$(comment Moose::Util::TypeConstraints is Moose v0.05)
	dev-perl/MooseX-Has-Sugar
	dev-perl/MooseX-Types $(comment MooseX::Types::Moose)
	dev-perl/Readonly
	$(comment virtual/perl-overload)

"
DEPEND="
	${RDEPEND}
	$(comment configure requires)
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)

	$(comment build requires)
	$(comment virtual/perl-File-Find)
	virtual/perl-File-Temp
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	>=virtual/perl-Test-Simple-0.88 $(comment Test::More 0.880.0)
"
SRC_TEST="do"
