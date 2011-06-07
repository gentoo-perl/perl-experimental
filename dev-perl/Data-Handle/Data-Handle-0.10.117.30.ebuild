# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.01011703
inherit perl-module

DESCRIPTION="A Very simple interface to the __DATA__ file handle."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	$(comment virtual/perl-Carp)
	virtual/perl-IO $(comment IO::File)
	dev-perl/Package-Stash
	virtual/perl-Scalar-List-Utils
	$(comment virtual/perl-Symbol)
	virtual/perl-Term-ANSIColor
	$(comment virtual/perl-overload)
	virtual/perl-parent
"
DEPEND="
	${COMMON_DEPEND}
	$(comment virtual/perl-Data-Dumper)
	$(comment virtual/perl-English)
	$(comment virtual/perl-File-Find)
	virtual/perl-File-Temp
	virtual/perl-IO $(comment IO::Handle)
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	dev-perl/Test-Fatal
	>=virtual/perl-Test-Simple-0.96 $(comment 0.960.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
