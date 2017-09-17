# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=DOY
MODULE_VERSION=0.03
inherit perl-module

DESCRIPTION="Moose in a box"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="strict traits instancetype declare types cli logging async utilroles other utils"
PERL_RM_FILES=(
	t/pod.t
)
RDEPEND="
	>=dev-perl/Moose-0.920.0
	strict? (
		>=dev-perl/MooseX-StrictConstructor-0.80.0
		>=dev-perl/MooseX-Params-Validate-0.60.0
	)
	traits? (
		dev-perl/MooseX-Role-TraitConstructor
		dev-perl/MooseX-Traits
		dev-perl/MooseX-Object-Pluggable
		dev-perl/MooseX-Role-Parameterized
	)
	instancetype? (
		dev-perl/MooseX-GlobRef
		dev-perl/MooseX-InsideOut
		>=dev-perl/MooseX-Singleton-0.200.0
		>=dev-perl/MooseX-NonMoose-0.60.0
	)
	declare? (
		dev-perl/MooseX-Declare
		dev-perl/MooseX-Method-Signatures
		dev-perl/TryCatch
	)
	types? (
		>=dev-perl/MooseX-Types-0.200.0
		dev-perl/MooseX-Types-Structured
		dev-perl/MooseX-Types-Path-Class
		dev-perl/MooseX-Types-Set-Object
		dev-perl/MooseX-Types-DateTime
	)
	cli? (
		dev-perl/MooseX-Getopt
		dev-perl/MooseX-ConfigFromFile
		dev-perl/MooseX-SimpleConfig
		dev-perl/MooseX-App-Cmd
		dev-perl/MooseX-Role-Cmd
	)
	logging? (
		dev-perl/MooseX-LogDispatch
		dev-perl/MooseX-LazyLogDispatch
		dev-perl/MooseX-Log-Log4perl
	)
	async? (
		dev-perl/MooseX-POE
		dev-perl/MooseX-Workers
	)
	utilroles? (
		dev-perl/MooseX-Daemonize
		dev-perl/MooseX-Param
		dev-perl/MooseX-Iterator
		dev-perl/MooseX-Clone
		dev-perl/MooseX-Storage
	)
	other? (
		dev-perl/Moose-Autobox
		dev-perl/MooseX-ClassAttribute
		dev-perl/MooseX-SemiAffordanceAccessor
		>=dev-perl/namespace-autoclean-0.90.0
	)
	utils? (
		dev-perl/Pod-Coverage-Moose
	)
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
"
