# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=DANJOU
MODULE_VERSION=0.2803
inherit perl-module

DESCRIPTION='Base implementations for modules to negotiate with Google Data APIs'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::MockModule
	echo dev-perl/Test-MockModule
	# Test::MockObject
	echo dev-perl/Test-MockObject
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# Test::Warn
	echo dev-perl/Test-Warn
	# UNIVERSAL::can
	echo dev-perl/UNIVERSAL-can
	# UNIVERSAL::isa
	echo dev-perl/UNIVERSAL-isa
}
perl_meta_runtime() {
	# Any::Moose 0.04 ( 0.40.0 )
	echo \>=dev-perl/Any-Moose-0.40.0
	# Carp
	echo dev-lang/perl
	# Digest::SHA1
	echo dev-perl/Digest-SHA1
	# LWP::Protocol::https
	echo dev-perl/LWP-Protocol-https
	# LWP::UserAgent
	echo dev-perl/libwww-perl
	# Lingua::EN::Inflect::Number
	echo dev-perl/Lingua-EN-Inflect-Number
	# Mouse 0.51 ( 0.510.0 )
	echo \>=dev-perl/Mouse-0.510.0
	# Net::Google::AuthSub 0.5 ( 0.500.0 )
	echo \>=dev-perl/Net-Google-AuthSub-0.500.0
	# Net::OAuth
	echo dev-perl/Net-OAuth
	# Net::OAuth2 0.53 ( 0.530.0 )
	echo \>=dev-perl/Net-OAuth2-0.530.0
	# Text::Glob
	echo dev-perl/Text-Glob
	# URI
	echo dev-perl/URI
	# XML::Atom
	echo dev-perl/XML-Atom
	# XML::LibXML
	echo dev-perl/XML-LibXML
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
SRC_TEST="do"
