# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=CEESHEK
MODULE_VERSION="1.05"
inherit perl-module

DESCRIPTION="Add Template Toolkit support to CGI::Application"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
PERL_RM_FILES=(
	t/99_pod_coverage.t
	t/98_pod.t
)
RDEPEND="
	>=dev-perl/CGI-Application-4.0.0
	dev-perl/Class-ISA
	virtual/perl-File-Spec
	virtual/perl-Scalar-List-Utils
	>=dev-perl/Template-Toolkit-2.0.0
"
DEPEND="${RDEPEND}
	>=dev-perl/Module-Build-0.340.201
"
