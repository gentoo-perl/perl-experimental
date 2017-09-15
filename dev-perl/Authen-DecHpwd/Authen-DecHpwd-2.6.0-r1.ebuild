# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=ZEFRAM
MODULE_VERSION="2.006"
inherit perl-module

DESCRIPTION="DEC VMS password hashing"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test +recommended"
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-perl/Data-Integer-0.3.0
	>=dev-perl/Digest-CRC-0.140.0
	$(comment virtual/perl-Exporter)
	dev-perl/Scalar-String
	$(comment virtual/perl-constant)
	virtual/perl-parent
	$(comment virtual/perl-strict)
	$(comment virtual/perl-warnings)
	recommended? ( virtual/perl-XSLoader )
"
DEPEND="
	${COMMON_DEPEND}
$(comment config requires)
	dev-perl/Module-Build
	$(comment virtual/perl-strict)
	$(comment virtual/perl-warnings)
$(comment config recommends)
	recommended? ( >=virtual/perl-ExtUtils-CBuilder-0.15.0 $(comment 0.150.0)  )
$(comment build requires)
	dev-perl/Module-Build
	dev-perl/Scalar-String
	virtual/perl-Test-Simple
	$(comment virtual/perl-strict)
	$(comment virtual/perl-warnings)
$(comment build recommends)
	recommended? ( >=virtual/perl-ExtUtils-CBuilder-0.15.0 $(comment 0.150.0) )
"
RDEPEND="
	${COMMON_DEPEND}
"
