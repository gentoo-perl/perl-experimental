# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=LBROCARD
MODULE_VERSION=0.35
inherit perl-module

DESCRIPTION='Test PSGI programs using WWW::Mechanize'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# HTTP::Message::PSGI
	echo dev-perl/Plack
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::WWW::Mechanize
	echo dev-perl/Test-WWW-Mechanize
	# Try::Tiny
	echo dev-perl/Try-Tiny
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
