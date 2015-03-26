# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.000000
inherit perl-module

DESCRIPTION='A Very simple interface to the __DATA__ file handle.'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# IO::File -> IO
# Symbol -> perl
RDEPEND="
	>=virtual/perl-Carp-1.220.0
	virtual/perl-IO
	>=dev-perl/Package-Stash-0.15
	virtual/perl-Scalar-List-Utils
	virtual/perl-Term-ANSIColor
	dev-perl/Try-Tiny
	virtual/perl-parent
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
