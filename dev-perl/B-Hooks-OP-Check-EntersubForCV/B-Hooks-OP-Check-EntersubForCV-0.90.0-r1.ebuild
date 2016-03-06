# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ZEFRAM
MODULE_VERSION=0.09
inherit perl-module

DESCRIPTION='Invoke callbacks on construction of entersub OPs for certain CVs'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# B-Utils-0.250.0 RT #94945
RDEPEND="
	>=dev-perl/B-Hooks-OP-Check-0.190.0
	>=dev-perl/B-Utils-0.250.0
	virtual/perl-Scalar-List-Utils
	virtual/perl-parent
"
DEPEND="
	${RDEPEND}
	dev-perl/ExtUtils-Depends
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
"
