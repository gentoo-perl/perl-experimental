# Copyright 1999-2009 Gentoo Foundation
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
	>=dev-perl/App-Cmd-0.200
	virtual/perl-Archive-Tar
	dev-perl/CPAN-Uploader
	>=dev-perl/Config-INI-MVP-0.018
	>=dev-perl/Data-Section-0.004
	>=dev-perl/DateTime-0.44
	dev-perl/File-Find-Rule
	dev-perl/File-HomeDir
	virtual/perl-File-Temp
	dev-perl/File-chdir
	dev-perl/Hash-Merge-Simple
	dev-perl/List-MoreUtils
	dev-perl/Mixin-ExtraFields-Param
	>=dev-perl/Moose-0.65
	>=dev-perl/Moose-Autobox-0.09
	dev-perl/MooseX-ClassAttribute
	dev-perl/MooseX-Types-Path-Class
	dev-perl/Path-Class
	dev-perl/Perl-Version
	dev-perl/Pod-Eventual
	dev-perl/Software-License
	>=dev-perl/String-Flogger-1
	dev-perl/String-Format
	>=dev-perl/String-RewritePrefix-0.002
	dev-perl/text-template
	dev-perl/YAML-LibYAML
	>=dev-perl/autobox-2.53
	>=virtual/perl-ExtUtils-Manifest-1.54
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
