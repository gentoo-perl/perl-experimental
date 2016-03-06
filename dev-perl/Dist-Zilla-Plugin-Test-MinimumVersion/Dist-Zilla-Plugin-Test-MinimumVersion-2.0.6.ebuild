# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=DOHERTY
MODULE_VERSION=2.000006
inherit perl-module

DESCRIPTION="Release tests for minimum required versions"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Dist-Zilla-4.0.0
	dev-perl/Moose
	dev-perl/Test-MinimumVersion
"
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-0.280.0
	test? (
		virtual/perl-File-Spec
		virtual/perl-IO
		>=virtual/perl-Test-Simple-0.960.0
		dev-perl/Test-Output
	)
"
