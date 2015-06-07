# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=JASONK
MODULE_VERSION=2.13
inherit perl-module

DESCRIPTION="Perl extension for managing Search Engine Sitemaps"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
# POSIX -> perl
# IO::File -> IO
# HTML::Entities -> HTML-Parser
# LWP::UserAgent -> libwww-perl
# Test::Mock::LWP -> Test::Mock::LWP::UserAgent
# Moose::Util::TypeConstraints -> Moose
# MooseX::Types::Moose -> MooseX-Types
RDEPEND="
	virtual/perl-Carp
	dev-perl/Class-Trigger
	dev-perl/DateTime
	dev-perl/HTML-Parser
	virtual/perl-IO
	virtual/perl-IO-Zlib
	dev-perl/Module-Find
	dev-perl/Moose
	dev-perl/MooseX-ClassAttribute
	dev-perl/MooseX-Types
	dev-perl/MooseX-Types-URI
	dev-perl/XML-Twig
	dev-perl/libwww-perl
	dev-perl/namespace-clean
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		dev-perl/Test-Most
		dev-perl/Test-Mock-LWP
		|| ( >=virtual/perl-Test-Simple-1.1.10 dev-perl/Test-use-ok )
	)
"
PERL_RM_FILES=(
	t/Search-Sitemap-Types.t # https://rt.cpan.org/Ticket/Display.html?id=86048
)
