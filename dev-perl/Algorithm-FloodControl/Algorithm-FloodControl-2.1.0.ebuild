# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=GUGU
MODULE_VERSION=2.001000
inherit perl-module

DESCRIPTION='Limit event processing to count/time ratio.'
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="test"
IUSE=""
perl_meta_build() {
	# Cache::FastMmap
	echo dev-perl/Cache-FastMmap
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Class::Accessor::Fast
	echo dev-perl/Class-Accessor
	# Module::Install 0.77 ( 0.770.0 )
	echo \>=dev-perl/Module-Install-0.770.0
	# Module::Load
	echo virtual/perl-Module-Load
	# Params::Validate
	echo dev-perl/Params-Validate
	# perl v5.8.0 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
	# version
	echo virtual/perl-version
}
DEPEND="
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
