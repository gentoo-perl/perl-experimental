# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=RJBS
inherit perl-module

DESCRIPTION="distribution builder; installer not included!"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/autobox-2.53
	>=dev-perl/App-Cmd-0.299
	virtual/perl-Archive-Tar
	>=dev-perl/Config-MVP-0.092990
	dev-perl/CPAN-Uploader
	>=dev-perl/DateTime-0.44
	>=dev-perl/Data-Section-0.004
	virtual/perl-File-Temp
	dev-perl/File-chdir
	dev-perl/File-HomeDir
	dev-perl/List-MoreUtils
	>=dev-perl/Moose-0.92
	>=dev-perl/Moose-Autobox-0.09
	dev-perl/Path-Class
	dev-perl/Perl-Version
	>=dev-perl/Pod-Eventual-0.091480
	dev-perl/PPI
	dev-perl/Software-License
	dev-perl/String-Formatter
	>=dev-perl/String-Flogger-1
	virtual/perl-Test-Simple
	dev-perl/text-template
	dev-perl/YAML-Tiny

	>=dev-perl/Config-INI-MVP-0.024
	virtual/perl-ExtUtils-MakeMaker
	>=virtual/perl-ExtUtils-Manifest-1.54
	dev-perl/File-Find-Rule
	dev-perl/File-ShareDir-Install
	dev-perl/Hash-Merge-Simple
	dev-perl/Mixin-ExtraFields-Param
	dev-perl/MooseX-Types-Path-Class
	dev-perl/namespace-autoclean
	>=dev-perl/String-RewritePrefix-0.002

"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
