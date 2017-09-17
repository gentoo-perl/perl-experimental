# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=MGRAHAM
MODULE_VERSION=0.08
inherit perl-module

DESCRIPTION="Add Config::General Support to CGI::Application"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	virtual/perl-Test-Simple
	dev-perl/CGI-Application
	dev-perl/Config-General-Match
	virtual/perl-Scalar-List-Utils
"
DEPEND="
	$RDEPEND
	dev-perl/Module-Build"
PERL_RM_FILES=(
	t/pod-coverage.t
	t/pod.t
)
SRC_TEST=do
