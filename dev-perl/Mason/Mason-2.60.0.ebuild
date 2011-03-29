# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=JSWARTZ
MODULE_VERSION=2.06
inherit perl-module

DESCRIPTION="Powerful, high-performance templating for the web and beyond"

SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

RDEPEND="
	virtual/perl-Memoize
	dev-perl/JSON
	dev-perl/Method-Signatures-Simple
	>=dev-perl/Log-Any-0.08
	>=dev-perl/Moose-0.95
	dev-perl/Capture-Tiny
	dev-perl/Class-Unload
	dev-perl/Devel-GlobalDestruction
	>=dev-perl/MooseX-StrictConstructor-0.13
	dev-perl/Guard
	dev-perl/IPC-System-Simple
	>=dev-perl/MooseX-HasDefaults-0.30.0
	>=virtual/perl-Scalar-List-Utils-1.01
	virtual/perl-File-Temp
	dev-perl/Try-Tiny
	virtual/perl-File-Spec
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.31
	dev-perl/Test-Class-Most
	dev-perl/Test-LongString
"

SRC_TEST=do
