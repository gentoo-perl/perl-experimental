# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=MITHALDU
MODULE_VERSION=2.35
inherit perl-module

DESCRIPTION="Parse 02packages.details.txt.gz"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"
perl_eumm_configure() {
	# strict

	# warnings

	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_eumm_prereq_pm() {
	# Archive::Peek
	echo dev-perl/Archive-Peek
	# Compress::Zlib
	echo virtual/perl-IO-Compress
	# CPAN::DistnameInfo
	echo dev-perl/CPAN-DistnameInfo
	# File::Slurp
	echo dev-perl/File-Slurp
	# Moose
	echo dev-perl/Moose
	# Path::Class
	echo dev-perl/Path-Class
	# PPI
	echo dev-perl/PPI
	# Test::InDistDir
	echo dev-perl/Test-InDistDir
	# Test::More
	echo virtual/perl-Test-Simple
	# version
	echo virtual/perl-version
}
IUSE=""
RDEPEND="$(perl_eumm_prereq_pm)"
DEPEND="$(perl_eumm_configure) $(perl_eumm_prereq_pm)"
