# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=DOLMEN
MODULE_VERSION=0.142280
inherit perl-module

DESCRIPTION='Wrap external command with a DWIM sub'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.300.0
}
perl_meta_runtime() {
	# Carp
	echo virtual/perl-Carp
	# File::Which
	echo dev-perl/File-Which
	# IPC::Run
	echo dev-perl/IPC-Run
	# Scalar::Util 1.11 ( 1.110.0 )
	echo \>=virtual/perl-Scalar-List-Utils-1.110.0
	# Sub::Name
	echo dev-perl/Sub-Name
	# strict
	echo dev-lang/perl
	# constant
	echo virtual/perl-constant
}
perl_meta_test() {
	# File::Spec
	echo virtual/perl-File-Spec
	# IO::Handle
	echo virtual/perl-IO
	# IPC::Open3
	echo virtual/perl-Test-Simple
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
