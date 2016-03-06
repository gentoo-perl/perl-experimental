# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=DCARDWELL
MODULE_VERSION=0.02
inherit perl-module

DESCRIPTION="Load templates using DBIx::Class."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
# Date::Parse -> TimeDate
# Template::Provider  -> Template-Toolkit
RDEPEND="
	dev-perl/TimeDate
	virtual/perl-File-Path
	virtual/perl-File-Spec
	dev-perl/Template-Toolkit
"
DEPEND="$RDEPEND
	dev-perl/Module-Build
	>=dev-perl/DBD-SQLite-1.110.0
	dev-perl/DBIx-Class
	virtual/perl-Test-Simple
"
PERL_RM_FILES=(
	t/02.perlcritic.t
	t/03.pod.t
	t/04.pod-coverage.t
)
SRC_TEST=do
