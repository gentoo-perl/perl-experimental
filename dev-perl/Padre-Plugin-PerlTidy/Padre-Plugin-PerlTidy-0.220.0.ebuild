# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=AZAWAWI
MODULE_VERSION=0.22
inherit perl-module

DESCRIPTION='Format perl files using Perl::Tidy'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.62 ( 6.620.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.620.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.62 ( 6.620.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.620.0
	# Test::More 0.42 ( 0.420.0 )
	echo \>=virtual/perl-Test-Simple-0.42
}
perl_meta_runtime() {
	# Padre::Plugin 0.92 ( 0.920.0 )
	echo \>=app-editors/padre-0.920.0
	# Params::Util 1.04 ( 1.40.0 )
	echo \>=dev-perl/Params-Util-1.40.0
	# Perl::Tidy 20101217 ( 20101217.0.0 )
	echo \>=dev-perl/perltidy-20101217.0.0
	# perl v5.8.2 ( 5.8.2 )
	echo \>=dev-lang/perl-5.8.2
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
