# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ESSKAR
MODULE_VERSION=1.48
inherit perl-module

DESCRIPTION="Generate HTML and Javascript for the Prototype library"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
# Class::Accessor::Fast -> Class-Accessor
RDEPEND="
	dev-perl/Class-Accessor
	dev-perl/HTML-Tree"
DEPEND="$RDEPEND
	dev-perl/Module-Build"

PERL_RM_FILES=(
	t/02pod.t
	t/03podcoverage.t
)
SRC_TEST=do
