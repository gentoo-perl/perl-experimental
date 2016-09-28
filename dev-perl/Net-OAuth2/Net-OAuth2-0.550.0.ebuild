# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=MARKOV
MODULE_VERSION=0.55
inherit perl-module

DESCRIPTION='OAuth version 2 client'
LICENSE=" || ( Artistic GPL-2 )"
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
	# HTTP::Request
	echo dev-perl/HTTP-Message
	# HTTP::Status
	echo dev-perl/HTTP-Message
	# JSON
	echo dev-perl/JSON
	# LWP::UserAgent
	echo dev-perl/libwww-perl
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Test::More
	echo virtual/perl-Test-Simple
	# URI
	echo dev-perl/URI
	# YAML
	echo dev-perl/YAML
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
