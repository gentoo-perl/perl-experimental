# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=AGENT
MODULE_VERSION=0.11
inherit perl-module

DESCRIPTION="(DEPRECATED) HTTP Cookie parser in C (Please use CGI::Cookie::XS
instead)"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/CGI-Cookie-XS-0.15
"
DEPEND="
	${RDEPEND}
	virtual/perl-Test-Simple"

PERL_RM_FILES=(
	t/99-pod-coverage.t
	t/99-pod.t
)

pkg_setup() {
	ewarn "This ebuild is DEPRECATED and will be removed."
	ewarn "Please use CGI-Cookie-XS!!!"
}

SRC_TEST=do
