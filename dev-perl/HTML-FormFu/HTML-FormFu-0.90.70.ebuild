# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=PERLER
MODULE_VERSION=0.09007
inherit perl-module

DESCRIPTION='HTML Form Creation, Rendering and Validation Framework'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.62 ( 6.620.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.620.0
}
perl_meta_build() {
	# CGI 3.37 ( 3.370.0 )
	echo \>=virtual/perl-CGI-3.370
	# ExtUtils::MakeMaker 6.62 ( 6.620.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.620.0
	# POSIX
	echo dev-lang/perl
	# Test::More 0.92 ( 0.920.0 )
	echo \>=virtual/perl-Test-Simple-0.92
}
perl_meta_runtime() {
	# Captcha::reCAPTCHA 0.93 ( 0.930.0 )
	echo \>=dev-perl/Captcha-reCAPTCHA-0.930.0
	# Carp
	# echo dev-perl/Carp
	# Class::Accessor::Chained::Fast
	echo dev-perl/Class-Accessor-Chained
	# Class::MOP::Method
	echo dev-perl/Moose
	# Clone 0.31 ( 0.310.0 )
	echo \>=dev-perl/Clone-0.310.0
	# Config::Any 0.18 ( 0.180.0 )
	echo \>=dev-perl/Config-Any-0.180.0
	# Crypt::CBC
	echo dev-perl/crypt-cbc
	# Crypt::DES
	echo dev-perl/Crypt-DES
	# Cwd
	echo virtual/perl-File-Spec
	# Data::Visitor 0.26 ( 0.260.0 )
	echo \>=dev-perl/Data-Visitor-0.260.0
	# Data::Visitor::Callback
	echo dev-perl/Data-Visitor
	# Date::Calc
	echo dev-perl/Date-Calc
	# DateTime 0.54 ( 0.540.0 )
	echo \>=dev-perl/DateTime-0.54
	# DateTime::Format::Builder 0.7901 ( 0.790.100 )
	echo \>=dev-perl/DateTime-Format-Builder-0.790.100
	# DateTime::Format::Natural
	echo dev-perl/DateTime-Format-Natural
	# DateTime::Format::Strptime
	echo dev-perl/DateTime-Format-Strptime
	# DateTime::Locale 0.45 ( 0.450.0 )
	echo \>=dev-perl/DateTime-Locale-0.450.0
	# Email::Valid
	echo dev-perl/Email-Valid
	# Encode
	echo virtual/perl-Encode
	# Exporter 5.57 ( 5.570.0 )
	echo \>=virtual/perl-Exporter-5.570.0
	# Fatal
	echo virtual/perl-autodie
	# File::Copy
	echo dev-lang/perl
	# File::Find
	echo dev-lang/perl
	# File::ShareDir
	echo dev-perl/File-ShareDir
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# HTML::Scrubber
	echo dev-perl/HTML-Scrubber
	# HTML::TokeParser::Simple 3.14 ( 3.140.0 )
	echo \>=dev-perl/HTML-TokeParser-Simple-3.140.0
	# HTTP::Headers 1.64 ( 1.640.0 )
	echo \>=dev-perl/HTTP-Message-1.640.0
	# Hash::Flatten
	echo dev-perl/Hash-Flatten
	# IO::File
	echo virtual/perl-IO
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Locale::Maketext
	echo virtual/perl-locale-maketext
	# Module::Pluggable
	echo virtual/perl-Module-Pluggable
	# Moose 1.00 ( 1.0.0 )
	echo \>=dev-perl/Moose-1.0.0
	# Moose::Role
	echo dev-perl/Moose
	# Moose::Util
	echo dev-perl/Moose
	# MooseX::Aliases
	echo dev-perl/MooseX-Aliases
	# MooseX::Attribute::Chained v1.0.1 ( 1.0.1 )
	echo \>=dev-perl/MooseX-Attribute-Chained-1.0.1
	# MooseX::SetOnce
	echo dev-perl/MooseX-SetOnce
	# Number::Format
	echo dev-perl/Number-Format
	# Path::Class::File
	echo dev-perl/Path-Class
	# Readonly
	echo dev-perl/Readonly
	# Regexp::Common
	echo dev-perl/regexp-common
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Storablei
	echo virtual/perl-Storable
	# Task::Weaken
	echo dev-perl/Task-Weaken
	# Template
	echo dev-perl/Template-Toolkit
	# YAML::XS 0.32 ( 0.320.0 )
	echo \>=dev-perl/YAML-LibYAML-0.320.0
	# perl v5.8.1 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"

pkg_pretend() {
	if has_version "<=dev-perl/HTML-FormFu-0.90.0"; then
		eerror "Sorry, in order to upgrade to HTML-FormFu 0.90.0 or greater you"
		eerror "need to first remove older versions."
		die "Installation requirements not met"
	fi
}
SRC_TEST="do"
