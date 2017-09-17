# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=CEESHEK
MODULE_VERSION=1.00
inherit perl-module

DESCRIPTION="Easy external redirects in CGI::Application"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/CGI-Application
"
DEPEND="$RDEPEND
	dev-perl/Module-Build
"
PERL_RM_FILES=(
	t/98_pod.t
	t/99_pod_coverage.t
)
SRC_TEST=do
