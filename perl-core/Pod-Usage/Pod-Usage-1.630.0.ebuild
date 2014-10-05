# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MAREKR
MODULE_VERSION=1.63
inherit perl-module

DESCRIPTION='Pod::Usage extracts POD documentation and shows usage information'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
# Pod::Text 3.15 -> perl-podlators 2.4.0
# (Cwd,File::Spec) -> perl-File-Spec
# File::Basename -> perl
RDEPEND="
	>=virtual/perl-podlators-2.4.0
	>=virtual/perl-Test-Simple-0.600.0
	>=virtual/perl-File-Spec-0.820.0
"
DEPEND="
	virtual/perl-ExtUtils-MakeMaker
	${RDEPEND}
"
SRC_TEST="do"
