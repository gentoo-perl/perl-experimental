# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=TODDR
MODULE_VERSION=1.928
inherit perl-module

DESCRIPTION="Implementation of AOL's OSCAR protocol for instant messaging"

SLOT="0"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
# Fcntl, POSIX, Symbol
RDEPEND="
	virtual/perl-Carp
	virtual/perl-Data-Dumper
	virtual/perl-Digest-MD5
	virtual/perl-Exporter
	virtual/perl-List-Util
	virtual/perl-MIME-Base64
	dev-perl/SOCKS
	virtual/perl-Scalar-Util
	virtual/perl-Socket
	virtual/perl-Time-HiRes
	dev-perl/XML-Parser
	virtual/perl-constant
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.310.0
	${RDEPEND}
	test? (
		virtual/perl-Test-Simple
	)"
