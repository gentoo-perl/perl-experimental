# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Simple commerce framework with AxKit/TT/Catalyst support."
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/C/CL/CLACO/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc x86"
RESTRICT="nomirror"

IUSE="catalystframework"

DEPEND="
	>=dev-perl/DBIx-Class-0.08008
	>=dev-perl/DBIx-Class-UUIDColumns-0.02000
	>=dev-perl/DBIx-Class-Validation-0.02000
	>=dev-perl/Data-Currency-0.04002
	>=dev-perl/Class-Accessor-Grouped-0.03
	dev-perl/Class-ISA
	dev-perl/Class-Inspector
	dev-perl/Clone
	>=dev-perl/Error-0.14
	>=dev-perl/Module-Pluggable-3.1
	>=dev-perl/Module-Starter-1.42
	dev-perl/DateTime
	dev-perl/DateTime-Format-MySQL
	>=dev-perl/Locale-Codes-2.07
	>=dev-perl/Locale-Currency-Format-1.22
	>=dev-perl/FormValidator-Simple-0.17
	>=dev-perl/Finance-Currency-Convert-WebserviceX-0.03
	>=dev-perl/SQL-Translator-0.08
	dev-perl/DBD-SQLite
	catalystframework? (
		>=dev-perl/Catalyst-Runtime-5.7007
		>=dev-perl/Catalyst-Devel-1.02
		dev-perl/Catalyst-View-TT
		dev-perl/yaml
		dev-perl/HTML-FillInForm
	)
"

	#>=dev-perl/Clone-0.28
		#>=dev-perl/yaml-0.65
