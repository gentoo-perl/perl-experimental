# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=JSWARTZ
MODULE_VERSION=2.12
inherit perl-module

DESCRIPTION="Powerful, high-performance templating for the web and beyond"

SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"
comment() { echo ''; }
RDEPEND="
	dev-perl/Capture-Tiny
	dev-perl/Class-Unload
	dev-perl/Devel-GlobalDestruction
	virtual/perl-File-Spec
	virtual/perl-File-Temp
	dev-perl/Guard
	dev-perl/IPC-System-Simple
	dev-perl/JSON
	>=dev-perl/Log-Any-0.08 $(comment 0.80.0)
	virtual/perl-Memoize
	dev-perl/Method-Signatures-Simple
	>=dev-perl/Moose-1.15 $(comment 1.150.0)
	>=dev-perl/MooseX-StrictConstructor-0.130 $(comment 0.130.0)
	>=dev-perl/MooseX-HasDefaults-0.30.0
	>=virtual/perl-Scalar-List-Utils-1.01 $(comment Scalar::Util 1.10.0)
	dev-perl/Try-Tiny
"
DEPEND="${RDEPEND}
	$(comment CONFIGURE)
	>=virtual/perl-ExtUtils-MakeMaker-6.30 $(comment 6.300.0)
	$(comment BUILD)
	dev-perl/Test-Class-Most
	dev-perl/Test-LongString
"

SRC_TEST=do
