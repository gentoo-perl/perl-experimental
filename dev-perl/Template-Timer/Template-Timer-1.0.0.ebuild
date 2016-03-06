# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=PETDANCE
MODULE_VERSION=1.00
inherit perl-module

DESCRIPTION="Rudimentary profiling for Template Toolkit"

LICENSE="|| ( Artistic-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
# Template -> Template-Toolkit
RDEPEND="dev-perl/Template-Toolkit
	virtual/perl-Time-HiRes"
DEPEND="test? (
	${RDEPEND}
	virtual/perl-Test-Simple
)"
PERL_RM_FILES=(
	t/pod.t
)
SRC_TEST=do
