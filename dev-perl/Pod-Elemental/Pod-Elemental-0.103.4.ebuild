# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.103004
inherit perl-module

DESCRIPTION='work with nestable Pod elements'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RDEPEND="
	dev-perl/Class-Load
	virtual/perl-Encode
	>=virtual/perl-Scalar-List-Utils-1.330.0
	dev-perl/Mixin-Linewise
	>=dev-perl/Moose-0.900.0
	dev-perl/MooseX-Types
	>=dev-perl/Pod-Eventual-0.4.0
	dev-perl/String-RewritePrefix
	dev-perl/String-Truncate
	dev-perl/Sub-Exporter
	dev-perl/Sub-Exporter-ForMethods
	dev-perl/namespace-autoclean
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=virtual/perl-CPAN-Meta-2.120.900
		virtual/perl-Data-Dumper
		virtual/perl-ExtUtils-MakeMaker
		virtual/perl-File-Spec
		dev-perl/Test-Deep
		dev-perl/Test-Differences
		>=virtual/perl-Test-Simple-0.960.0
	)
"
