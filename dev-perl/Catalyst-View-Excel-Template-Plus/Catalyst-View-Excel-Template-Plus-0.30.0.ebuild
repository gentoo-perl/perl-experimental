# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=RBO
MODULE_VERSION="0.03"
inherit perl-module

DESCRIPTION="A Catalyst View for Excel::Template::Plus"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/Catalyst-Runtime
	>=dev-perl/Excel-Template-Plus-0.50
"
DEPEND="
	${RDEPEND}
	dev-perl/Module-Build
	>=dev-perl/Test-Exception-0.210.0
	virtual/perl-Test-Simple
	virtual/perl-parent
"
PERL_RM_FILES=(
	t/pod.t
	t/pod_coverage.t
)
SRC_TEST="do"
