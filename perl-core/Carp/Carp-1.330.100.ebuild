# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=ZEFRAM
MODULE_VERSION=1.3301
inherit perl-module

DESCRIPTION='alternative warn and die for modules'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# Config -> perl
# IPC::Open3 1.0103 -> perl
# overload -> perl
RDEPEND="
	virtual/perl-Exporter
	virtual/perl-ExtUtils-MakeMaker
	virtual/perl-Test-Simple
	virtual/perl-parent
"
DEPEND="${RDEPEND}"

SRC_TEST="do parallel"
