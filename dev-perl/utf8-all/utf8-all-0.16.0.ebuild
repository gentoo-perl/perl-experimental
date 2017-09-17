# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=DOHERTY
MODULE_VERSION=0.016
inherit perl-module

DESCRIPTION='turn on Unicode - all of it'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
# Symbol,PerlIO,IPC::Open3 -> perl
# charnames, feature -> perl-5.10
RDEPEND="
	virtual/perl-Encode
	dev-perl/Import-Into
	virtual/perl-parent
"
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-0.280.0
	test? (
		virtual/perl-File-Spec
		virtual/perl-IO
		dev-perl/Test-Fatal
		>=virtual/perl-Test-Simple-0.960.0
		dev-perl/Test-Warn
		virtual/perl-autodie
		virtual/perl-constant
		>=virtual/perl-version-0.770.0
	)
"
