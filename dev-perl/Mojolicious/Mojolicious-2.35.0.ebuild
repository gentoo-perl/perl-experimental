# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=SRI
MODULE_VERSION=2.35
inherit perl-module

DESCRIPTION="The Box!"

LICENSE="Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_eumm_configure() {
	#perl 5.010100
	echo \>=dev-lang/perl-5.10.1
	# strict

	# warnings

	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_eumm_prereq_pm() {
	# B

	# Carp

	# Config

	# Cwd
	echo virtual/perl-File-Spec
	# Data::Dumper
	echo virtual/perl-Data-Dumper
	# Digest::MD5
	echo virtual/perl-Digest-MD5
	# Encode
	echo virtual/perl-Encode
	# Errno

	# Exporter

	#ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker

	#Fcntl

	#File::Basename

	#File::Copy

	#File::Find

	#File::Path
	echo virtual/perl-File-Path
	#File::Spec
	echo virtual/perl-File-Spec
	#File::Temp
	echo virtual/perl-File-Temp
	#FindBin

	#Getopt::Long
	echo virtual/perl-Getopt-Long
	#I18N::LangTags
	echo virtual/perl-i18n-langtags
	#I18N::LangTags::Detect
	echo virtual/perl-i18n-langtags
	#IO::File
	#IO::Poll
	#IO::Socket
	#IO::Socket::INET
	echo virtual/perl-IO
	#List::Util
	echo virtual/perl-Scalar-List-Utils
	#Locale::Maketextt
	echo virtual/perl-locale-maketext
	#MIME::Base64
	echo virtual/perl-MIME-Base64
	#MIME::QuotedPrint
	echo virtual/perl-MIME-Base64
	#POSIX

	#Scalar::Util
	echo virtual/perl-Scalar-List-Utils

	#Socket

	#Sys::Hostname

	#Test::Harness
	echo virtual/perl-Test-Harness
	#Test::More
	echo virtual/perl-Test-Simple
	#Time::HiRes
	echo virtual/perl-Time-HiRes
}
DEPEND="$(perl_eumm_configure) $(perl_eumm_prereq_pm)"
RDEPEND="$(perl_eumm_prereq_pm)"
SRC_TEST="do"
