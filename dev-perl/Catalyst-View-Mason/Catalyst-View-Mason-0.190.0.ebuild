# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=JJNAPIORK
MODULE_VERSION=0.19
inherit perl-module

DESCRIPTION="Mason View Class"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
PATCHES=(
	"${FILESDIR}/${MODULE_VERSION}/rt-102381.patch"
)
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.500.0
	virtual/perl-File-Spec
	dev-perl/HTML-Mason
	dev-perl/MRO-Compat
	virtual/perl-Scalar-List-Utils
	virtual/perl-parent
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.360.0
"
