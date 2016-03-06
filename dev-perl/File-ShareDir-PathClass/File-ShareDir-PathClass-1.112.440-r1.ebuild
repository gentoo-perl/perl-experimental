# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=JQUELIN
MODULE_VERSION=1.112440
inherit perl-module

DESCRIPTION="File::ShareDir returning Path::Class objects "

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
COMMON_DEPEND="
	$(comment File::ShareDir)
	dev-perl/File-ShareDir

	$(comment Path::Class)
	dev-perl/Path-Class

	$(comment Sub::Exporter)
	dev-perl/Sub-Exporter

	$(comment perl 5.010)
	>=dev-lang/perl-5.10.0

	$(comment strict)

	$(comment warnings)
"
DEPEND="
	${COMMON_DEPEND}
	$(comment configure)
	$(comment Module::Build 0.3601)
	>=dev-perl/Module-Build-0.36.01 $(comment 0.360.100)

	$(comment build)
	$(comment File::Find)

	$(comment File::Temp)
	virtual/perl-File-Temp

	$(comment Module::Build 0.3601)
	>=dev-perl/Module-Build-0.36.01 $(comment 0.360.100)

	$(comment Test::More 0.88)
	>=virtual/perl-Test-Simple-0.88 $(comment Test::More 0.880.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
