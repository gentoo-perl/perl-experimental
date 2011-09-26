# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=APOCAL
MODULE_VERSION=1.005
inherit perl-module

DESCRIPTION='Add the $AUTHORITY variable and metadata to your distribution'
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_mb_build() {
	# File::Find

	# File::Temp
	echo virtual/perl-File-Temp

	# Module::Build 0.3601
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_mb_configure() {
	# strict

	# warnings

	# Module::Build 0.3601
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_mb_requires() {
	# Dist::Zilla::Role::FileFinderUser 4.102345
	echo \>=dev-perl/Dist-Zilla-4.102.345
	# Dist::Zilla::Role::FileMunger 4.102345
	echo \>=dev-perl/Dist-Zilla-4.102.345
	# Dist::Zilla::Role::MetaProvider 4.102345
	echo \>=dev-perl/Dist-Zilla-4.102.345
	# File::HomeDir
	echo dev-perl/File-HomeDir
	# File::Spec
	echo virtual/perl-File-Spec
	# Moose 1.03
	echo \>=dev-perl/Moose-1.30.0
	# Moose::Util::TypeConstraints 1.01
	echo \>=dev-perl/Moose-1.10.0
	# PPI 1.206
	echo \>=dev-perl/PPI-1.206
	# perl 5.006
}
DEPEND="$(perl_mb_configure)
		$(perl_mb_build)
		$(perl_mb_requires)"
RDEPEND="$(perl_mb_requires)"
SRC_TEST="do"
