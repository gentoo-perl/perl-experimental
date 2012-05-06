# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RBO
MODULE_VERSION=0.34
inherit perl-module

DESCRIPTION='Excel::Template'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
	# File::Path
	echo virtual/perl-File-Path
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::Deep 0.095 ( 0.95.0 )
	echo \>=dev-perl/Test-Deep-0.95.0
	# Test::Exception 0.21 ( 0.210.0 )
	echo \>=dev-perl/Test-Exception-0.21
	# Test::More 0.47 ( 0.470.0 )
	echo \>=virtual/perl-Test-Simple-0.47
}
perl_meta_runtime() {
	# File::Basename
	echo dev-lang/perl
	# IO::Scalar
	echo dev-perl/IO-stringy
	# Spreadsheet::WriteExcel 0.42 ( 0.420.0 )
	echo \>=dev-perl/Spreadsheet-WriteExcel-0.420.0
	# Spreadsheet::WriteExcel::Utility
	echo dev-perl/Spreadsheet-WriteExcel
	# Test::More
	echo virtual/perl-Test-Simple
	# XML::Parser
	echo dev-perl/XML-Parser
	# perl v5.6.0 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
