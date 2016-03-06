# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.02
inherit perl-module

DESCRIPTION="Generate image tags for static files."

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.700.0
	dev-perl/Image-Size
	dev-perl/Path-Class
	dev-perl/HTML-Parser
	dev-perl/MRO-Compat
"
DEPEND="$RDEPEND
	dev-perl/Test-WWW-Mechanize-Catalyst
"
PERL_RM_FILES=(
	t/pod.t
	t/pod_coverage.t
)
SRC_TEST=do
