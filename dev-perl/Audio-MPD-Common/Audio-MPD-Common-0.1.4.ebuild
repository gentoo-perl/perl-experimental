# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit perl-module

DESCRIPTION="a bunch of common helper classes for mpd"
HOMEPAGE="http://search.cpan.org/~jquelin/Audio-MPD-Common/"
SRC_URI="mirror://cpan/authors/id/J/JQ/JQUELIN/${P}.tar.gz"

LICENSE="Artistic GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~sparc ~x86"
IUSE=""

SRC_TEST="do"

RDEPEND="dev-perl/Class-Accessor
	dev-perl/Readonly
	dev-lang/perl"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build"
