# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Accurately serialize a data structure as Perl code."
SRC_URI="mirror://cpan/authors/id/Y/YV/YVES/${PN}-2.08-40.tar.gz"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"

IUSE=""

S=${WORKDIR}/${PN}-2.08-40

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
