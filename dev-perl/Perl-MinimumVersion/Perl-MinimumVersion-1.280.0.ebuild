# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=ADAMK
MODULE_VERSION=1.28
inherit perl-module

DESCRIPTION='Find a minimum required version of perl for Perl code'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
	# File::Spec 0.80 ( 0.800.0 )
	echo \>=virtual/perl-File-Spec-0.80
	# Test::More 0.47 ( 0.470.0 )
	echo \>=virtual/perl-Test-Simple-0.47
	# Test::Script 1.03 ( 1.30.0 )
	echo \>=dev-perl/Test-Script-1.30.0
}
perl_meta_runtime() {
	# File::Find::Rule 0.32 ( 0.320.0 )
	echo \>=dev-perl/File-Find-Rule-0.320.0
	# File::Find::Rule::Perl 1.04 ( 1.40.0 )
	echo \>=dev-perl/File-Find-Rule-Perl-1.40.0
	# List::Util 1.20 ( 1.200.0 )
	echo \>=virtual/perl-Scalar-List-Utils-1.200.0
	# PPI 1.215 ( 1.215.0 )
	echo \>=dev-perl/PPI-1.215.0
	# Params::Util 0.25 ( 0.250.0 )
	echo \>=dev-perl/Params-Util-0.25
	# Perl::Critic::Utils 1.104 ( 1.104.0 )
	echo \>=dev-perl/Perl-Critic-1.104
	# perl v5.6.0 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# version 0.76 ( 0.760.0 )
	echo \>=virtual/perl-version-0.76
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
