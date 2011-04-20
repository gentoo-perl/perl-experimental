# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=KRAIH
MODULE_VERSION=1.21
inherit perl-module

DESCRIPTION="The Box!"

LICENSE="Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	virtual/perl-File-Spec
	virtual/perl-Digest-MD5
	virtual/perl-Encode
	virtual/perl-ExtUtils-MakeMaker
	virtual/perl-File-Path
	virtual/perl-File-Temp

	virtual/perl-Getopt-Long
	virtual/perl-IO
	virtual/perl-locale-maketext
	virtual/perl-MIME-Base64

	virtual/perl-Scalar-List-Utils
	virtual/perl-Storable
	virtual/perl-Test-Simple
	virtual/perl-Test-Harness
	virtual/perl-Time-HiRes
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
