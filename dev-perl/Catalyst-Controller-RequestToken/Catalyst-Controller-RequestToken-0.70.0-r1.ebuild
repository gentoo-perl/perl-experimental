# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=HIDE
MODULE_VERSION=0.07
inherit perl-module

DESCRIPTION='Handling transaction tokens across forms'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
}
perl_meta_build() {
	# Catalyst::Action::RenderView
	echo dev-perl/Catalyst-Action-RenderView
	# Catalyst::Plugin::Session
	echo dev-perl/Catalyst-Plugin-Session
	# Catalyst::Plugin::Session::State::Cookie
	echo dev-perl/Catalyst-Plugin-Session-State-Cookie
	# Catalyst::Runtime 5.8 ( 5.800.0 )
	echo \>=dev-perl/Catalyst-Runtime-5.800.0
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
	# Test::More
	echo virtual/perl-Test-Simple
	# ok
	echo dev-perl/Test-use-ok
}
perl_meta_runtime() {
	# Digest
	echo virtual/perl-Digest
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="broken"
