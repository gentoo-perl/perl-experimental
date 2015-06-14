# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=LEMBARK
MODULE_VERSION=2.12
inherit perl-module

DESCRIPTION='FindBin::libs - locate and a '\''use lib'\'' or export directories based on .'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
PATCHES=(
	"${FILESDIR}/${MODULE_VERSION}/rt103054.patch"
)
RDEPEND="
	virtual/perl-Carp
	virtual/perl-File-Spec
	virtual/perl-File-Temp
	virtual/perl-Scalar-List-Utils
	virtual/perl-Test-Simple
"
DEPEND="
	$RDEPEND
	>=dev-perl/Module-Build-0.400.300
"
