# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MITHALDU
MODULE_VERSION=1.112071
inherit perl-module

DESCRIPTION="test environment setup for development with IDE"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
COMMON_DEPEND="
	$(comment File::Spec)
	virtual/perl-File-Spec
"
DEPEND="
	$(comment build)
	$(comment File::Find)

	$(comment File::Temp)
	virtual/perl-File-Temp

	$(comment Test::More)
	virtual/perl-Test-Simple

	$(comment configure)
	$(comment ExtUtils::MakeMaker 6.56)
	>=virtual/perl-ExtUtils-MakeMaker-6.56
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
