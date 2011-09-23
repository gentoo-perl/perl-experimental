# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=LEMBARK
MODULE_VERSION=1.52
inherit perl-module

DESCRIPTION="Locate and 'use lib' directories along the path of \$FindBin::Bin"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
PREREQ_PM() {
	#strict

	#warnings

	#Carp

	#Cwd
	echo virtual/perl-File-Spec

	#FindBin

	#Symbol

	#File::Spec
	echo virtual/perl-File-Spec
}
DEPEND="$(PREREQ_PM)"
RDEPEND="$(PREREQ_PM)"
SRC_TEST="do"
