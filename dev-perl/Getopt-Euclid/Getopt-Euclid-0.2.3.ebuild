# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KGALINSKY
MODULE_VERSION=v0.2.3
inherit perl-module

DESCRIPTION="Executable Uniform Command-Line Interface Descriptions"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
RDEPEND="
	virtual/perl-Test-Simple
	virtual/perl-version
	virtual/perl-File-Spec  $(comment File::Spec::Functions)
	virtual/perl-Scalar-List-Utils $(comment List::Util)
"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build
"
SRC_TEST="do"
