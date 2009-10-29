# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="File storage backend for session data"

IUSE="test"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.65
	>=dev-perl/Catalyst-Plugin-Session-Store-Delegate-0.05
	dev-perl/Class-Accessor
	>=dev-perl/DBIx-Class-0.07000
	virtual/perl-MIME-Base64
	dev-perl/MRO-Compat
	virtual/perl-Scalar-List-Utils
	virtual/perl-Storable
"
DEPEND="
	${RDEPEND}
	test? (
		dev-perl/Test-Warn
	)
"
SRC_TEST="do"
