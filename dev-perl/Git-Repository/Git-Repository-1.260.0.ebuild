# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BOOK
MODULE_VERSION=1.26
inherit perl-module

DESCRIPTION='Perl interface to Git repositories'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.38 ( 0.380.0 )
	echo \>=virtual/perl-Module-Build-0.380.0
}
perl_meta_build() {
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Cwd
	echo virtual/perl-File-Spec
	# File::Path
	echo virtual/perl-File-Path
	# File::Spec
	echo virtual/perl-File-Spec
	# IPC::Open3
	echo dev-lang/perl
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# System::Command 1.05 ( 1.50.0 )
	echo \>=dev-perl/System-Command-1.50.0
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
