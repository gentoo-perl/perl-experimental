# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=ILMARI
MODULE_VERSION=1.39
inherit perl-module

DESCRIPTION='Catalyst Development Tools'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Template -> Template-Toolkit
RDEPEND="
	>=dev-perl/Catalyst-Action-RenderView-0.100.0
	>=dev-perl/Catalyst-Plugin-ConfigLoader-0.300.0
	>=dev-perl/Catalyst-Plugin-Static-Simple-0.280.0
	>=dev-perl/Catalyst-Runtime-5.900.10
	>=dev-perl/Config-General-2.420.0
	>=dev-perl/File-ChangeNotify-0.70.0
	dev-perl/File-Copy-Recursive
	dev-perl/File-ShareDir
	>=dev-perl/Module-Install-1.20.0
	dev-perl/Moose
	dev-perl/MooseX-Emulate-Class-Accessor-Fast
	>=dev-perl/Path-Class-0.90.0
	>=dev-perl/Template-Toolkit-2.140.0
	dev-perl/namespace-autoclean
	dev-perl/namespace-clean
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.360.0
	test? (
		>=dev-perl/Test-Fatal-0.3.0
		>=virtual/perl-Test-Simple-0.940.0
	)
"
