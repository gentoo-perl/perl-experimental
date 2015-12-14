# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=YVES
MODULE_VERSION=3.014
inherit perl-module

DESCRIPTION="Fast, compact, powerful binary deserialization"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	virtual/perl-XSLoader
"

DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-7.0.0
	virtual/perl-Data-Dumper
	>=virtual/perl-ExtUtils-ParseXS-2.210.0
	virtual/perl-File-Path
	virtual/perl-File-Spec
	virtual/perl-Scalar-Util
	dev-perl/Test-LongString
	>=virtual/perl-Test-Simple-0.880.0
	dev-perl/Test-Warn
"
