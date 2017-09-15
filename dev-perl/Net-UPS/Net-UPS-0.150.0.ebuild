# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=DAKKAR
MODULE_VERSION=0.15
inherit perl-module

DESCRIPTION="Implementation of UPS Online Tools API in Perl"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
PERL_RM_FILES=(
	# Useless author tests
	t/release-no-tabs.t
	t/release-pod-syntax.t
	# Requires private data configured
	t/02address.t
	t/net-ups-live.t
	# https://rt.cpan.org/Ticket/Display.html?id=105214
	t/net-ups-offline.t
)
RDEPEND="
	virtual/perl-Carp
	virtual/perl-Encode
	virtual/perl-File-Spec
	virtual/perl-IO
	dev-perl/IO-Socket-SSL
	dev-perl/libwww-perl
	dev-perl/Mozilla-CA
	virtual/perl-Scalar-List-Utils
	dev-perl/Task-Weaken
	dev-perl/XML-Simple
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		dev-perl/Data-Dump
		dev-perl/Data-Printer
		virtual/perl-File-Temp
		dev-perl/HTTP-Message
		dev-perl/Test-Deep
		dev-perl/Test-Exception
		virtual/perl-Test-Simple
		dev-perl/Test-Most
		virtual/perl-Time-HiRes
		dev-perl/XML-SAX
	)
"
