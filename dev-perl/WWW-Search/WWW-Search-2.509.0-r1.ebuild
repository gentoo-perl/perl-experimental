# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=MTHURN
MODULE_VERSION=2.509
inherit perl-module

DESCRIPTION='Virtual base class for WWW searches'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
}
perl_meta_build() {
	# ExtUtils::MM_Unix 1.41 ( 1.410.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-1.41
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
	# File::Temp
	echo virtual/perl-File-Temp
	# IO::Capture::Stderr
	echo dev-perl/IO-Capture
	# Test::File
	echo dev-perl/Test-File
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::Simple
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Bit::Vector
	echo dev-perl/Bit-Vector
	# CGI
	echo dev-perl/CGI
	# Data::Dumper
	echo virtual/perl-Data-Dumper
	# Date::Manip
	echo dev-perl/Date-Manip
	# File::Basename
	echo dev-lang/perl
	# File::Copy
	echo dev-lang/perl
	# File::Find
	echo dev-lang/perl
	# File::Path
	echo virtual/perl-File-Path
	# File::Slurp
	echo dev-perl/File-Slurp
	# File::Spec
	echo virtual/perl-File-Spec
	# Getopt::Long 2.24 ( 2.240.0 )
	echo \>=virtual/perl-Getopt-Long-2.240.0
	# HTML::Parser 2.23 ( 2.230.0 )
	echo \>=dev-perl/HTML-Parser-2.230.0
	# HTML::TreeBuilder
	echo dev-perl/HTML-Tree
	# LWP::MemberMixin
	echo dev-perl/libwww-perl
	# LWP::UserAgent 2 ( 2.0.0 )
	echo \>=dev-perl/libwww-perl-2.0.0
	# Net::Domain
	echo virtual/perl-libnet
	# POSIX
	echo dev-lang/perl
	# Pod::Usage
	echo virtual/perl-Pod-Usage
	# Test::More
	echo virtual/perl-Test-Simple
	# URI
	echo dev-perl/URI
	# URI::Escape
	echo dev-perl/URI
	# User
	echo dev-perl/User
	# perl 5.005 ( 5.5.0 )
	echo \>=dev-lang/perl-5.5.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
PERL_RM_FILES=(
	t/pod-coverage.t
	t/pod.t
)
SRC_TEST="do"
