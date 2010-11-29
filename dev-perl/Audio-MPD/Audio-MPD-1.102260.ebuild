# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit perl-module

DESCRIPTION="Audio::MPD is a Perl module for interfacing MPD through perl scripts."
HOMEPAGE="http://search.cpan.org/~jquelin/Audio-MPD/"
SRC_URI="mirror://cpan/authors/id/J/JQ/JQUELIN/${P}.tar.gz"

LICENSE="Artistic GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~sparc ~x86"
IUSE=""

SRC_TEST="do"

RDEPEND="dev-perl/Proc-Daemon
	dev-perl/Audio-MPD-Common
	dev-perl/Getopt-Euclid
	dev-perl/Readonly
	dev-perl/MooseX-Has-Sugar
	dev-perl/MooseX-SemiAffordanceAccessor
	dev-lang/perl"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build"

pkg_postinst() {
	elog "You need perl-experimental overlay for some dependencies"
	elog "Add the overlay with layman like this:"
	elog "layman -a perl-experimental"
}
