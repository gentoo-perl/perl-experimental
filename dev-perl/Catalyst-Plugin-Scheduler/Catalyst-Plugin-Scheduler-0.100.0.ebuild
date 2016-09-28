# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=BRICAS
MODULE_VERSION=0.10
inherit perl-module

DESCRIPTION="Schedule events to run in a cron-like fashion"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.610.0
	dev-perl/DateTime-Event-Cron
	dev-perl/set-scalar
	virtual/perl-Storable
	dev-perl/YAML
	dev-perl/MRO-Compat
"
DEPEND="${DEPEND}"

PERL_RM_FILES=(
	t/02pod.t
	t/03podcoverage.t
	t/04critic.rc
	t/04critic.t
)

SRC_TEST=do
