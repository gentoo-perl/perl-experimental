# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/DBD-Pg/DBD-Pg-1.49.ebuild,v 1.14 2008/03/19 02:57:25 jer Exp $

inherit perl-module eutils

DESCRIPTION="PostgreSQL database driver for the DBI module"
SRC_URI="mirror://cpan/authors/id/T/TU/TURNSTEP/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 s390 sh sparc x86 ~x86-fbsd"
IUSE=""

DEPEND="
	>=dev-perl/DBI-1.52
	dev-perl/version
	dev-db/postgresql-base
"

# env variables for compilation:
export POSTGRES_INCLUDE=/usr/include/postgresql/
export POSTGRES_LIB=/usr/lib/postgresql/

mydoc="README"
