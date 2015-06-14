# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=CEESHEK
MODULE_VERSION="1.03"
inherit perl-module

DESCRIPTION="Add CGI::Session support to CGI::Application"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT=test

IUSE=""
RDEPEND="
	>=dev-perl/CGI-Application-3.210.0
	>=dev-perl/CGI-Session-3.950.0
	virtual/perl-File-Spec
	virtual/perl-Scalar-List-Utils
"
DEPEND="${RDEPEND}
	dev-perl/Module-Build
	virtual/perl-Test-Simple
	dev-perl/Test-Exception
"
PERL_RM_FILES=(
	t/98_pod.t
	t/99_pod_coverage.t
)
SRC_TEST="do"
