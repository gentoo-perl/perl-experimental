# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.30
inherit perl-module

DESCRIPTION='Mashes up MooseX::Getopt and App::Cmd'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# App::Cmd::Command -> App-Cmd
# English -> perl
# File::Basename -> perl
# Moose::Object -> Moose
# YAML -> yaml
# base -> perl
RDEPEND="
	>=dev-perl/App-Cmd-0.321.0
	>=dev-perl/Getopt-Long-Descriptive-0.91.0
	dev-perl/Moose
	dev-perl/MooseX-Getopt
	dev-perl/namespace-autoclean
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		virtual/perl-Data-Dumper
		virtual/perl-File-Spec
		>=virtual/perl-Test-Simple-0.880.0
		dev-perl/Test-Output
		dev-perl/YAML
	)
"
