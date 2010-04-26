# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=KRAIH
inherit perl-module

DESCRIPTION="The Box!"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	virtual/perl-File-Spec
	virtual/perl-Digest-MD5
	virtual/perl-Encode
	virtual/perl-ExtUtils-MakeMaker
	virtual/perl-File-Temp

	virtual/perl-Getopt-Long
	virtual/perl-IO
	virtual/perl-MIME-Base64

	virtual/perl-Scalar-List-Utils
	virtual/perl-Time-HiRes
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		virtual/perl-Test-Simple
		virtual/perl-Test-Harness
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
