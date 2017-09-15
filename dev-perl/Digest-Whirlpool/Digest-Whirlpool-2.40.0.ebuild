# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=AVAR
MODULE_VERSION=2.04
inherit perl-module

DESCRIPTION="A 512-bit, collision-resistant, one-way hash function"

IUSE="test"
SLOT="0"
KEYWORDS="~amd64 ~x86"

PERL_RM_FILES=(
	t/02-pod.t
)
RDEPEND="
	virtual/perl-Digest
	virtual/perl-Getopt-Long
	virtual/perl-MIME-Base64
	virtual/perl-Pod-Usage
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.360.0
	test? (
		virtual/perl-Test-Simple
	)
"
