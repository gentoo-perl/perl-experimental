# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=BOOK
MODULE_VERSION=1.22
inherit perl-module

DESCRIPTION="Perl interface to Git repositories"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_mb_requires() {
	#List::Util
	echo virtual/perl-Scalar-List-Utils
	#File::Spec
	echo virtual/perl-File-Spec
	#File::Path
	echo virtual/perl-File-Path
	#IPC::Open3

	#Cwd
	echo virtual/perl-File-Spec
	#System::Command 1.01
	echo '>=dev-perl/System-Command-1.10.0'
}
perl_mb_build() {
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_mb_configure() {
	# strict
	# warnings
	# perl 5.006
	# Module::Build
	echo virtual/perl-Module-Build
}
RDEPEND="$(perl_mb_requires)"
DEPEND="
	$(perl_mb_requires)
	$(perl_mb_build)
	$(perl_mb_configure)
"
SRC_TEST=do
