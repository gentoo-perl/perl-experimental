# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=BOOK
MODULE_VERSION=1.21
inherit perl-module

DESCRIPTION="Perl interface to Git repositories"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
RDEPEND="
	virtual/perl-Scalar-List-Utils $(comment List::Util)
	virtual/perl-File-Spec
	virtual/perl-File-Path
	$(comment virtual/perl-IPC-Open3)
	$(comment Cwd is File::Spec)
	>=dev-perl/System-Command-1.10.0
"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build
	virtual/perl-Test-Simple $(comment Test::More)
"

SRC_TEST=do
