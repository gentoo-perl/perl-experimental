# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=CHUNZI
MODULE_VERSION=0.03
inherit perl-module

DESCRIPTION="The great new Catalyst::Plugin::Message!"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND=""
DEPEND="
	virtual/perl-Test-Simple
	dev-perl/Module-Build"

PERL_RM_FILES=(
	t/pod-coverage.t
	t/pod.t
)
SRC_TEST=do
