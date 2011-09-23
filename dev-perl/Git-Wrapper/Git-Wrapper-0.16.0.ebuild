# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=GENEHACK
MODULE_VERSION=0.016
inherit perl-module

DESCRIPTION="wrap git(7) command-line interface"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

perl_eumm_build() {
	#File::Path
	echo virtual/perl-File-Path
	#File::Spec
	echo virtual/perl-File-Spec
	#IO::File
	echo virtual/perl-IO
	#POSIX

	#Test::Deep
	echo dev-perl/Test-Deep
	#Test::More
	echo virtual/perl-Test-Simple
}
perl_eumm_configure() {
	# strict
	# warnings
	# perl 5.006
	# ExtUtils::MakeMaker 6.56
	echo '>=virtual/perl-ExtUtils-MakeMaker-6.56'
}
perl_eumm_prereq_pm() {
	# File::Temp
	echo virtual/perl-File-Temp
	# File::Pushd
	echo dev-perl/File-pushd
	# IPC::Cmd
	echo virtual/perl-IPC-Cmd
	# IPC::Open3

	# Sort::Versions
	echo dev-perl/Sort-Versions
	# Symbol
	# overload
	# strict
	# warnings
}
extra_deps() {
	echo dev-vcs/git
}

DEPEND="
	$(perl_eumm_configure)
	$(perl_eumm_build)
	$(perl_eumm_prereq_pm)
	$(extra_deps)
"
RDEPEND="
	$(perl_eumm_prereq_pm)
	$(extra_deps)
"
SRC_TEST="do"
