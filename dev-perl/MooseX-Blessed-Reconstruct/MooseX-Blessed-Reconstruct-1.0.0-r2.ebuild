# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=YANICK
MODULE_VERSION=1.00
inherit perl-module

DESCRIPTION="A Data::Visitor for creating Moose objects from blessed placeholders"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Class::MOP -> Moose 1.990.0
# Scalar::Util -> S-L-U
# IO::Handle -> IO
# IPC::Open3 -> perl
# ok -> Test-use-ok
RDEPEND="
	virtual/perl-Carp
	dev-perl/Class-Load
	>=dev-perl/Moose-1.990.0
	>=dev-perl/Data-Visitor-0.210.0
	virtual/perl-Scalar-List-Utils
	dev-perl/namespace-clean
	>=virtual/perl-Test-Simple-1.1.10
"
DEPEND="${RDEPEND}
	>=dev-perl/Module-Build-0.280.0
	test? (
		virtual/perl-File-Spec
		virtual/perl-IO
	)
"
