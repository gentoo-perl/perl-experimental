# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=BINGOS
MODULE_VERSION=0.20
inherit perl-module

DESCRIPTION='A Module::Install extension to automatically convert POD to a README'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
}
perl_meta_build() {
	# Capture::Tiny 0.05 ( 0.50.0 )
	echo \>=dev-perl/Capture-Tiny-0.50.0
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::More 0.47 ( 0.470.0 )
	echo \>=virtual/perl-Test-Simple-0.47
}
perl_meta_runtime() {
	# Module::Install 1 ( 1.0.0 )
	echo \>=dev-perl/Module-Install-1.0.0
	# Pod::Html
	echo dev-lang/perl
	# Pod::Man
	echo virtual/perl-podlators
	# Pod::Text 3.13 ( 3.130.0 )
	echo \>=virtual/perl-podlators-2.2.1
	# perl v5.6.0 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
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
