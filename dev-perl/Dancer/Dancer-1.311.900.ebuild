# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=YANICK
MODULE_VERSION=1.3119
inherit perl-module

DESCRIPTION='A minimal-effort oriented web application framework'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# Test::More 0.94 ( 0.940.0 )
	echo \>=virtual/perl-Test-Simple-0.94
}
perl_meta_runtime() {
	# Encode
	echo virtual/perl-Encode
	# File::Basename
	echo dev-lang/perl
	# File::Spec
	echo virtual/perl-File-Spec
	# HTTP::Body 1.07 ( 1.70.0 )
	echo \>=dev-perl/HTTP-Body-1.70.0
	# HTTP::Server::Simple::PSGI 0.11 ( 0.110.0 )
	echo \>=dev-perl/HTTP-Server-Simple-PSGI-0.110.0
	# LWP
	echo dev-perl/libwww-perl
	# MIME::Types
	echo dev-perl/MIME-Types
	# Module::Runtime
	echo dev-perl/Module-Runtime
	# Time::HiRes
	echo virtual/perl-Time-HiRes
	# Try::Tiny 0.09 ( 0.90.0 )
	echo \>=dev-perl/Try-Tiny-0.90.0
	# URI 1.59 ( 1.590.0 )
	echo \>=dev-perl/URI-1.590.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
