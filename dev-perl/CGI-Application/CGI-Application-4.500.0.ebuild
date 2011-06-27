# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=MARKSTOS
MODULE_VERSION="4.50"
inherit perl-module

DESCRIPTION="Framework for building reusable web-applications"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="+recommended test"
comment() { echo ''; }
RDEPEND="
	virtual/perl-CGI
	dev-perl/HTML-Template
	$(comment virtual/perl-Carp)
	virtual/perl-Class-ISA
	recommended? (
		dev-perl/CGI-PSGI
	)
"
DEPEND="
	${RDEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.470.0
	)
	virtual/perl-Module-Build
"
SRC_TEST=do
