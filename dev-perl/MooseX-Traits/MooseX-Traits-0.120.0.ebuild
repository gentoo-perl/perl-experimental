# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.12
inherit perl-module

DESCRIPTION="Automatically apply roles at object creation time"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
# Moose::Role -> Moose
# File::Spec::Functions -> File-Spec
# List::Util -> Scalar-List-Utils
RDEPEND="
	virtual/perl-Carp
	dev-perl/Class-Load
	dev-perl/Moose
	dev-perl/Sub-Exporter
	dev-perl/namespace-autoclean
"
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-Tiny-0.30.0
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		virtual/perl-ExtUtils-MakeMaker
		virtual/perl-File-Spec
		virtual/perl-Scalar-List-Utils
		dev-perl/MooseX-Role-Parameterized
		dev-perl/Test-Fatal
		virtual/perl-Test-Simple
		dev-perl/Test-Requires
		|| ( >=virtual/perl-Test-Simple-1.1.10 dev-perl/Test-use-ok )
	)
"
