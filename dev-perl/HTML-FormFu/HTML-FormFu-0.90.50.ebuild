# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=PERLER
MODULE_VERSION=0.09005
inherit perl-module

DESCRIPTION="HTML Form Creation, Rendering and Validation Framework"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_mi_perl() {
	#perl 5.008001
	echo '>=dev-lang/perl-5.8.1'
}
perl_mi_requires() {
	# Exporter 5.57
	# Captcha::reCAPTCHA 0.93
	echo '>=dev-perl/Captcha-reCAPTCHA-0.930.0'
	# Class::Accessor::Chained::Fast
	echo dev-perl/Class-Accessor-Chained
	# Clone 0.31
	echo '>=dev-perl/Clone-0.310.0'
	# Class::MOP::Method
	echo '|| ( >=dev-perl/Moose-2.0.0 dev-perl/Class-MOP )'
	# Config::Any 0.18
	echo '>=dev-perl/Config-Any-0.180.0'
	# Crypt::CBC
	echo dev-perl/crypt-cbc
	# Crypt::DES
	echo dev-perl/Crypt-DES
	# Data::Visitor 0.26
	echo '>=dev-perl/Data-Visitor-0.260.0'
	# Date::Calc
	echo dev-perl/Date-Calc
	# DateTime 0.54
	echo '>=dev-perl/DateTime-0.54'
	# DateTime::Format::Strptime 1.2000
	echo '>=dev-perl/DateTime-Format-Strptime-1.200.0'
	# DateTime::Format::Builder 0.7901
	echo '>=dev-perl/DateTime-Format-Builder-0.790.100'
	# DateTime::Format::Natural
	echo dev-perl/DateTime-Format-Natural
	# DateTime::Locale 0.45
	echo '>=dev-perl/DateTime-Locale-0.450.0'
	# Email::Valid
	echo dev-perl/Email-Valid
	# File::ShareDir
	echo dev-perl/File-ShareDir
	# Hash::Flatten
	echo dev-perl/Hash-Flatten
	# HTML::Scrubber
	echo dev-perl/HTML-Scrubber
	# HTML::TokeParser::Simple 3.14
	echo '>=dev-perl/HTML-TokeParser-Simple-3.140.0'
	# HTTP::Headers 1.64
	echo '|| ( >=dev-perl/HTTP-Message-1.640.0 >=dev-perl/libwww-perl-1.640.0 )'
	# IO::File
	echo virtual/perl-IO
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# Locale::MakeText
	echo virtual/perl-locale-maketext
	# Module::Pluggable
	echo virtual/perl-Module-Pluggable
	# Moose 1.00
	echo '>=dev-perl/Moose-1.0.0'
	# Moose::Meta::Attribute::Custom::Traint::Chained
	echo dev-perl/MooseX-ChainedAccessors
	# MooseX::Aliases
	echo dev-perl/MooseX-Aliases
	# MooseX::ChainedAcessors::Accessor 0.02
	echo '>=dev-perl/MooseX-ChainedAccessors-0.20.0'
	# MooseX::SetOnce
	echo dev-perl/MooseX-SetOnce
	# Number::Format
	echo dev-perl/Number-Format
	# Readonly
	echo dev-perl/Readonly
	# Regexp::Common
	echo dev-perl/regexp-common
	# Path::Class::File
	echo dev-perl/Path-Class
	# Task::Weaken
	echo dev-perl/Task-Weaken
	# Template
	echo dev-perl/Template-Toolkit
	# YAML::XS 0.32
	echo '>=dev-perl/YAML-LibYAML-0.320.0'
}
perl_mi_test() {
	# CGI 0.37
	echo '>=virtual/perl-CGI-3.370.0'
	# Test::More 0.92
	echo '>=virtual/perl-Test-Simple-0.92'
}
RDEPEND="
	$(perl_mi_perl)
	$(perl_mi_requires)
"
DEPEND="
	$(perl_mi_perl)
	$(perl_mi_requires)
	$(perl_mi_test)
"
pkg_pretend() {
	if has_version "<=dev-perl/HTML-FormFu-0.90.0"; then
		eerror "Sorry, in order to upgrade to HTML-FormFu 0.90.0 or greater you"
		eerror "need to first remove older versions."
		die "Installation requirements not met"
	fi
}
SRC_TEST=do
