# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_VERSION=0.22
MODULE_AUTHOR=BPGN
inherit perl-module

DESCRIPTION="A class for european VAT numbers validation."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

meta_build_dep() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
meta_configure_dep() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
meta_runtime_dep() {
	# HTTP::Request::Common 1 1.0.0
	echo '
		>=dev-perl/HTTP-Message-1.0.0
		>=dev-perl/libwww-perl-6.0.0
	'
	# LWP::UserAgent 1 1.0.0
	echo \>=dev-perl/libwww-perl-1.0.0
}
RDEPEND="$(meta_runtime_dep)"
DEPEND="$(meta_configure_dep) $(meta_build_dep) $(meta_runtime_dep)"

SRC_TEST=do
