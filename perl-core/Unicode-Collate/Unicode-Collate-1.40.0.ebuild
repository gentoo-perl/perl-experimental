# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=SADAHIRO
MODULE_VERSION=1.04
inherit perl-module

DESCRIPTION='Unicode Collation Algorithm'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
# DynaLoader -> perl
RDEPEND="
	virtual/perl-Carp
	virtual/perl-constant
	virtual/perl-File-Spec
"
DEPEND="
	virtual/perl-ExtUtils-MakeMaker
	${RDEPEND}
"
SRC_TEST="do parallel"
