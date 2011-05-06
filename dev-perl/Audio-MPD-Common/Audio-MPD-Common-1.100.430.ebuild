# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR="JQUELIN"
MODULE_VERSION="1.100430"
inherit perl-module

DESCRIPTION="a bunch of common helper classes for mpd"

LICENSE="Artistic GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
RDEPEND="
	$(comment requires)
	dev-perl/MooseX-Has-Sugar
	dev-perl/MooseX-Types $(comment MooseX::Types::Moose)
	$(comment virtual/perl-English)
	$(comment virtual/perl-overload)
	$(comment Moose::Util::TypeConstraints is Moose v0.05)
	dev-perl/Readonly
	virtual/perl-Test-Simple $(comment Test::More)
	$(comment virtual/perl-File-Find)
	virtual/perl-File-Temp
	>=dev-perl/Moose-0.92 $(comment 0.920.0)
"
DEPEND="
	${RDEPEND}
	$(comment configure requires)
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
"
SRC_TEST="do"
