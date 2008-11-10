# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/DBD-Pg/DBD-Pg-1.49.ebuild,v 1.14 2008/03/19 02:57:25 jer Exp $

MODULE_AUTHOR=TURNSTEP
inherit perl-module eutils

DESCRIPTION="PostgreSQL database driver for the DBI module"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	>=dev-perl/DBI-1.52
	dev-perl/version
	dev-db/postgresql-base
"

# env variables for compilation:
#export POSTGRES_INCLUDE=/usr/$(get_includedir)/postgresql-${SLOT}/$(get_includedir)
#export POSTGRES_LIB=/usr/$(get_libdir)/postgresql-${SLOT}/$(get_libdir)

mydoc="README"
