# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=GWILLIAMS
MODULE_VERSION=1.004
inherit perl-module

DESCRIPTION="Search the NCBI PubMed abstract database."

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
# LWP::UserAgent -> libwww-perl
RDEPEND="
	dev-perl/WWW-Search
	dev-perl/libwww-perl
	dev-perl/XML-DOM
"
DEPEND="$RDEPEND"
PERL_RM_FILES=(
	t/pod.t
	t/pod_coverage.t
)
SRC_TEST=do
