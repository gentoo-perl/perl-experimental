# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ZEFRAM
MODULE_VERSION=0.004
inherit perl-module

DESCRIPTION='Perl-based open notation for data'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build
	echo dev-perl/Module-Build
	# perl 5.008 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_build() {
	# Module::Build
	echo dev-perl/Module-Build
	# Test::More
	echo virtual/perl-Test-Simple
	# perl 5.008 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_runtime() {
	# Carp
	# echo dev-perl/Carp
	# Exporter
	echo virtual/perl-Exporter
	# Params::Classify
	echo dev-perl/Params-Classify
	# parent
	echo virtual/perl-parent
	# perl 5.008 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
