# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.52
inherit perl-module

DESCRIPTION='A serialization framework for Moose classes'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test minimal"

# TODO: dev-perl/MooseX-Storage-Format-JSONpm
# 		dev-perl/YAML-Any
# 		dev-perl/YAML-XS

RDEPEND="
	!minimal? (
		virtual/perl-IO
		dev-perl/IO-stringy
		>=dev-perl/JSON-MaybeXS-1.1.0
		virtual/perl-Storable
		dev-perl/YAML
		dev-perl/YAML-Syck
		)
	virtual/perl-Carp
	virtual/perl-Data-Dumper
	virtual/perl-Digest
	dev-perl/Module-Runtime
	>=dev-perl/Moose-0.990.0
	virtual/perl-Scalar-List-Utils
	dev-perl/String-RewritePrefix
	dev-perl/namespace-autoclean
"
DEPEND="${RDEPEND}
	>=virtual/perl-CPAN-Meta-Requirements-2.120.620
	virtual/perl-ExtUtils-MakeMaker
	virtual/perl-Module-Metadata
	test? (
			!minimal? (
				dev-perl/Digest-HMAC
				dev-perl/MooseX-Types
				>=virtual/perl-CPAN-Meta-2.120.900
				dev-perl/Test-Deep-JSON
				dev-perl/Test-Without-Module
			)
			virtual/perl-File-Spec
			virtual/perl-File-Temp
			virtual/perl-JSON-PP
			dev-perl/Test-Deep
			dev-perl/Test-Deep-Type
			dev-perl/Test-Fatal
			dev-perl/Test-Requires
			>=virtual/perl-Test-Simple-0.880.0
	)
"
