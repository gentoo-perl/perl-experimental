# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
MODULE_AUTHOR=CHORNY
MODULE_VERSION=1.0.4
inherit perl-module
DESCRIPTION="Comments that do more than just sit there"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
comment() { echo ''; }
RDEPEND="
	virtual/perl-Text-Balanced
	virtual/perl-version
	$(comment virtual/perl-Filter-Simple)
	$(comment virtual/perl-Data-Dumper)
	virtual/perl-Scalar-List-Utils
"

DEPEND="${DEPEND}
	dev-perl/Module-Build
	test? (
		virtual/perl-Test-Simple
	)
"
