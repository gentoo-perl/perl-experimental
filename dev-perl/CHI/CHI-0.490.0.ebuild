# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=JSWARTZ
MODULE_VERSION=0.49
inherit perl-module

DESCRIPTION="Unified cache interface"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

comment() {
	echo "";
}

COMMON_DEPEND="
	$(comment PREREQ_PM -- )
	>=dev-perl/Carp-Assert-0.20
	dev-perl/Data-UUID
	dev-perl/Digest-JHash
	>=virtual/perl-File-Spec-0.80 $(comment 0.800.0)
	dev-perl/Hash-MoreUtils
	dev-perl/JSON
	dev-perl/Digest-JHash
	>=dev-perl/List-MoreUtils-0.13 $(comment 0.130.0)
	>=dev-perl/Log-Any-0.08 $(comment 0.80.0)
	>=dev-perl/Moose-0.66 $(comment 0.660.0)
	virtual/perl-Storable
	$(comment dev-perl/Task-Weaken -- Not needed really. )
	>=dev-perl/Time-Duration-1.06 $(comment 1.60.0)
	>=dev-perl/Time-Duration-Parse-0.03 $(comment 0.30.0)
	>=dev-perl/Try-Tiny-0.05 $(comment 0.50.0)
"

DEPEND="${COMMON_DEPEND}
	$(comment BUILD_REQUIRES -- )
	dev-perl/TimeDate 		 $(comment Date::Parse)
	virtual/perl-Test-Simple $(comment Test::Builder)
	dev-perl/Test-Class
	dev-perl/Test-Deep
	dev-perl/Test-Exception
	virtual/perl-Test-Simple $(comment Test::More)
	dev-perl/Test-Warn
	$(comment CONFIGURE_REQUIRES -- )
	>=virtual/perl-ExtUtils-MakeMaker-6.56
"
RDEPEND="${COMMON_DEPEND}";

SRC_TEST="do"
