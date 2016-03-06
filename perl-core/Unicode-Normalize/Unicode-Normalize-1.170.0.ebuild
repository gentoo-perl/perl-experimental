# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=SADAHIRO
MODULE_VERSION=1.17
inherit perl-module

DESCRIPTION='Unicode Normalization Forms'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
# DynaLoader -> perl
# File::Copy -> perl
# bytes -> perl
RDEPEND="
	virtual/perl-Carp
	virtual/perl-Exporter
	virtual/perl-File-Spec
	virtual/perl-constant
"
DEPEND="
	virtual/perl-ExtUtils-MakeMaker
	$RDEPEND
"
SRC_TEST="do parallel"
