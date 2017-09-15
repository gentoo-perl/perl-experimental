# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.008
inherit perl-module

DESCRIPTION='prevent a release if you have prereqs not found on CPAN'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Dist::Zilla::Role::BeforeRelease
	echo dev-perl/Dist-Zilla
	# Encode
	echo virtual/perl-Encode
	# JSON
	echo dev-perl/JSON
	# LWP::UserAgent
	echo dev-perl/libwww-perl
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# Moose
	echo dev-perl/Moose
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
	# perl v5.10.0 ( 5.10.0 )
	echo \>=dev-lang/perl-5.10.0
	# version
	echo virtual/perl-version
}
perl_meta_test() {
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::DZil
	echo dev-perl/Dist-Zilla
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
