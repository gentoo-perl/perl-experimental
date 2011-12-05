# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=SRI
MODULE_VERSION=2.35
inherit perl-module

DESCRIPTION='Real-time web framework'
LICENSE=" Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_runtime() {
	# B
	echo dev-lang/perl
	# Carp
	echo dev-lang/perl
	# Config
	#echo 
	# Cwd
	echo virtual/perl-File-Spec
	# Data::Dumper
	echo virtual/perl-Data-Dumper
	# Digest::MD5
	echo virtual/perl-Digest-MD5
	# Digest::SHA
	echo virtual/perl-Digest-SHA
	# Encode
	echo virtual/perl-Encode
	# Errno
	#echo 
	# Exporter
	echo virtual/perl-Exporter
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# Fcntl
	echo dev-lang/perl
	# File::Basename
	echo dev-lang/perl
	# File::Copy
	echo dev-lang/perl
	# File::Find
	echo dev-lang/perl
	# File::Path
	echo virtual/perl-File-Path
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# FindBin
	echo dev-lang/perl
	# Getopt::Long
	echo virtual/perl-Getopt-Long
	# I18N::LangTags
	echo dev-lang/perl
	# I18N::LangTags::Detect
	echo dev-lang/perl
	# IO::File
	echo virtual/perl-IO
	# IO::Poll
	echo virtual/perl-IO
	# IO::Socket
	echo virtual/perl-IO
	# IO::Socket::INET
	echo virtual/perl-IO
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Locale::Maketext
	# echo dev-perl/Locale-Maketext
	# MIME::Base64
	echo virtual/perl-MIME-Base64
	# MIME::QuotedPrint
	echo virtual/perl-MIME-Base64
	# POSIX
	echo dev-lang/perl
	# Pod::Simple::HTML
	echo virtual/perl-Pod-Simple
	# Pod::Simple::Search
	echo virtual/perl-Pod-Simple
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Socket
	# echo dev-perl/Socket
	# Sys::Hostname
	echo dev-lang/perl
	# Test::Harness
	echo virtual/perl-Test-Harness
	# Test::More
	echo virtual/perl-Test-Simple
	# Time::HiRes
	echo virtual/perl-Time-HiRes
	# perl 5.010001 ( 5.10.1 )
	echo \>=dev-lang/perl-5.10.1
	# re
	echo dev-lang/perl
}
DEPEND="
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
