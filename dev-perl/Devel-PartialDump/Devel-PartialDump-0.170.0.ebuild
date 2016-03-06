# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.17
inherit perl-module

DESCRIPTION="Partial dumping of data structures, optimized for argument printing."

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
# Carp::Heavy -> Carp
# List::Util ->
# Scalar::Util -> Scalar-List-Utils
# File::Spec::Functons -> File-Spec
RDEPEND="
	virtual/perl-Carp
	dev-perl/Class-Tiny
	virtual/perl-Scalar-List-Utils
	dev-perl/Sub-Exporter
	dev-perl/namespace-clean
"
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-Tiny-0.30.0
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		virtual/perl-File-Spec
		virtual/perl-Test-Simple
		dev-perl/Test-Warn
		|| ( >=virtual/perl-Test-Simple-1.1.10 dev-perl/Test-use-ok )
		virtual/perl-if
	)
"
