# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=JJNAPIORK
MODULE_VERSION=0.27
inherit perl-module

DESCRIPTION="Structured Type Constraints for Moose"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
RDEPEND="
	>=dev-perl/Devel-PartialDump-0.130.0
	>=dev-perl/Moose-1.08 $(comment 1.80.0)
	$(comment Moose::Meta::TypeCoercion since v0.05)
	$(comment Moose::Meta::TypeConstraint since v0.05)
	$(comment Moose::Meta::TypeConstraint::Parameterizable since v0.34)
	$(comment Moose::Util::TypeConstraints since v0.01)
	>=dev-perl/MooseX-Types-0.220.0
	virtual/perl-Scalar-List-Utils $(comment Scalar::Util)
	>=dev-perl/Sub-Exporter-0.982
	$(comment virtual/perl-overload)
"
DEPEND="${RDEPEND}
	$(comment CONFIGURE)
	>=virtual/perl-ExtUtils-MakeMaker-6.56
	$(comment BUILD)
	test? (
		$(comment virtual/perl-Data-Dumper)
		dev-perl/DateTime
		dev-perl/MooseX-Types-DateTime
		dev-perl/MooseX-Types $(comment MooseX::Types::Moose)
		dev-perl/Test-Fatal
		>=virtual/perl-Test-Simple-0.94 $(comment 0.940.0)
	)
"
SRC_TEST="do"
