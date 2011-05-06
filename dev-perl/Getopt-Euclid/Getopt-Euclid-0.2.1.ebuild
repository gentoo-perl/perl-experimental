# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# $Header: $

inherit perl-module

DESCRIPTION="Executable Uniform Command-Line Interface Descriptions"
HOMEPAGE="http://search.cpan.org/~kgalinsky/Getopt-Euclid"
SRC_URI="mirror://cpan/authors/id/K/KG/KGALINSKY/${P}.tar.gz"

LICENSE="Unknown"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~sparc ~x86"
IUSE=""

SRC_TEST="do"

RDEPEND="dev-lang/perl"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build"
