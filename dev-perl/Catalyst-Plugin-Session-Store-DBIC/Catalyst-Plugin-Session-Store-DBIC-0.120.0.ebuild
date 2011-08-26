# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

MODULE_AUTHOR=FLORA
MODULE_VERSION=0.12
inherit perl-module

DESCRIPTION="File storage backend for session data"

IUSE=""
SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
comment() { true;}
RDEPEND="
	$(comment virtual/perl-Carp)
	>=dev-perl/Catalyst-Runtime-5.650.0
	$(comment Catalyst::Exception)
	>=dev-perl/Catalyst-Plugin-Session-Store-Delegate-0.05 $(comment 0.50.0)
	dev-perl/Class-Accessor $(comment Class::Accessor::Fast)
	>=dev-perl/DBIx-Class-0.07000 $(comment 0.70.0)
	virtual/perl-MIME-Base64
	dev-perl/MRO-Compat
	virtual/perl-Scalar-List-Utils $(comment Scalar::Util)
	virtual/perl-Storable
	$(comment virtual/perl-FindBin)
	virtual/perl-Test-Simple $(comment Test::More)
	>=dev-perl/Test-Warn-0.20 $(comment 0.200.0)
"
DEPEND="
	${RDEPEND}
"
SRC_TEST="do"
