# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit perl-module

DESCRIPTION="Audio::MPD is a Perl module for interfacing MPD through perl scripts."
HOMEPAGE="http://search.cpan.org/~jquelin/Audio-MPD/"
SRC_URI="mirror://cpan/authors/id/J/JQ/JQUELIN/${P}.tar.gz"

LICENSE="Artistic"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~sparc ~x86"
IUSE=""

SRC_TEST="do"

RDEPEND="dev-perl/Proc-Daemon
	dev-perl/Class-Accessor
	dev-perl/Readonly
	dev-lang/perl"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build"
