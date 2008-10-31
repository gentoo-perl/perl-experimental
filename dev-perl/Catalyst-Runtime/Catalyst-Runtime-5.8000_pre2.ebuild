# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Catalyst Runtime version"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/M/MR/MRAMBERG/Catalyst-Runtime-5.8000_02.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="M~amd64 M~x86"

S="${WORKDIR}/Catalyst-Runtime-5.8000_02"

IUSE=""
DEPEND="
	>=dev-perl/MooseX-Emulate-Class-Accessor-Fast-0.00300
	>=dev-perl/Moose-0.57
	dev-perl/Class-Accessor
	dev-perl/Class-Data-Inheritable
	>=dev-perl/Class-Inspector-1.06
	dev-perl/Cgi-Simple
	dev-perl/Data-Dump
	dev-perl/File-Modified
	dev-perl/HTML-Parser
	>=dev-perl/HTTP-Body-1.04
	>=dev-perl/libwww-perl-5.813
	>=dev-perl/HTTP-Request-AsCGI-0.5
	>=dev-perl/Module-Pluggable-3.01
	>=dev-perl/Path-Class-0.09
	>=dev-perl/Text-SimpleTable-0.03
	>=dev-perl/Tree-Simple-1.15
	dev-perl/Tree-Simple-VisitorFactory
	>=dev-perl/URI-1.35
	dev-perl/MRO-Compat
"

