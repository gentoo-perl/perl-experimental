# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=CFRANKS
MODULE_VERSION=1.11
inherit perl-module

DESCRIPTION="HTML Widget And Validation Framework"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
# HTML::Element -> HTML-Tree
# Class::Accessor::Fast -> Class-Accessor
# Class::Accessor::Chained::Fast -> Class-Accessor-Chained
RDEPEND="
	>=dev-lang/perl-5.8.1
	>=dev-perl/HTML-Tree-3.220.0
	dev-perl/Class-Accessor
	dev-perl/Class-Accessor-Chained
	dev-perl/Class-Data-Accessor
	dev-perl/HTML-Scrubber
	virtual/perl-Storable
	dev-perl/Module-Pluggable-Fast
	dev-perl/Email-Valid
	dev-perl/Date-Calc
	virtual/perl-Scalar-List-Utils
"
DEPEND="$RDEPEND
	dev-perl/Test-NoWarnings
	test? (
		dev-perl/Test-Deep
	)
"
PATCHES=(
	"${FILESDIR}/${MODULE_VERSION}/HTML-Tree-4-rt-63853.patch"
	"${FILESDIR}/${MODULE_VERSION}/5.17-hash-random-rt-85970.patch"
)
PERL_RM_FILES=(
	t/02pod.t
	t/03podcoverage.t
)

SRC_TEST="do parallel"
