# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=FREW
MODULE_VERSION="1.05"
inherit perl-module

DESCRIPTION="Add CGI::Session support to CGI::Application"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	>=dev-perl/CGI-Application-3.210.0
	>=dev-perl/CGI-Session-4.480.0
	virtual/perl-File-Spec
	virtual/perl-Scalar-List-Utils
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		>=virtual/perl-Test-Simple-1.001002
	)
"
PERL_RM_FILES=(
	t/release-pod-coverage.t
	t/release-pod-syntax.t
)
SRC_TEST="do parallel"
