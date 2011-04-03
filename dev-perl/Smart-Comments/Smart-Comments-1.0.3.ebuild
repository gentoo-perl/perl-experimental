# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
MODULE_AUTHOR=DCONWAY
MODULE_VERSION="v1.0.3"
inherit perl-module
DESCRIPTION="Comments that do more than just sit there"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
comment() { echo  ''; }
DEPEND="
	virtual/perl-Text-Balanced
	virtual/perl-Test-Simple
	virtual/perl-Scalar-List-Utils
	virtual/perl-version
	$(comment virtual/perl-Data-Dumper)
	$(comment virtual/perl-Filter-Simple)
"

RDEPEND="${DEPEND}"
SRC_TEST="do"
