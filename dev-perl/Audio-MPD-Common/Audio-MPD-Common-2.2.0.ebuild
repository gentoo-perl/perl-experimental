# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=JQUELIN
MODULE_VERSION=2.002
inherit perl-module

DESCRIPTION='common helper classes for mpd'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Moose-0.920.0
	dev-perl/MooseX-Has-Sugar
	dev-perl/MooseX-Types
	dev-perl/Readonly
	dev-perl/String-Formatter
"
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-0.360.100
	test? (
		virtual/perl-File-Spec
		virtual/perl-IO
		>=virtual/perl-Test-Simple-0.880.0
	)
"
