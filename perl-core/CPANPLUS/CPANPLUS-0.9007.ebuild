# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit versionator
MY_P=${PN}-$(delete_version_separator 2)
S=${WORKDIR}/${MY_P}
MODULE_AUTHOR=BINGOS
inherit perl-module

DESCRIPTION="API & CLI access to the CPAN mirrors"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-Archive-Extract
	virtual/perl-IPC-Cmd
	virtual/perl-Log-Message
	virtual/perl-Locale-Maketext-Simple
	virtual/perl-Module-Pluggable
	virtual/perl-Object-Accessor
	virtual/perl-Package-Constants
	virtual/perl-Parse-CPAN-Meta
	virtual/perl-File-Fetch
	virtual/perl-Module-Loaded
	virtual/perl-Term-UI"
DEPEND="${RDEPEND}"

SRC_TEST=do
