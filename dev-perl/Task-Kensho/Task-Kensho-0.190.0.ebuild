# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=PERIGRIN
MODULE_VERSION="0.19"
inherit perl-module

DESCRIPTION="A Glimpse at an Enlightened Perl"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="+basic-toolchain +testing oop async webdev db crawl module-devel date
config cli scripting xml +exceptions spreadsheet email"
COMMON_DEPEND="
	basic-toolchain? (
		dev-perl/Bundle-CPAN
		dev-perl/local-lib
		virtual/perl-version
	)
	exceptions? (
		dev-perl/Try-Tiny
		dev-perl/TryCatch
	)
	testing? (
		virtual/perl-Test-Simple
		dev-perl/Test-Most
		dev-perl/Test-Exception
		dev-perl/Test-Pod
		dev-perl/Test-Pod-Coverage
		dev-perl/Test-Memory-Cycle
		dev-perl/Devel-Cover
	)
	oop? (
		dev-perl/Moose
		dev-perl/MooseX-Types
		dev-perl/Moose-Autobox
		dev-perl/MooseX-Aliases
		dev-perl/MooseX-Storage
		dev-perl/MooseX-Getopt
		dev-perl/MooseX-SimpleConfig
		dev-perl/MooseX-StrictConstructor
		dev-perl/namespace-autoclean
	)
	async? (
		dev-perl/POE
	)
	xml? (
		dev-perl/XML-LibXML
		dev-perl/XML-SAX
		dev-perl/XML-Generator-PerlData
		dev-perl/XML-SAX-Writer
	)
	webdev? (
		dev-perl/Catalyst-Runtime
		dev-perl/Catalyst-View-TT
		dev-perl/Catalyst-Model-DBIC-Schema
		dev-perl/Catalyst-Devel
		dev-perl/Catalyst-Plugin-Session
		dev-perl/Catalyst-Plugin-Authentication
		dev-perl/Catalyst-Plugin-StackTrace
		dev-perl/Catalyst-Plugin-FillInForm
		dev-perl/Catalyst-Controller-FormBuilder
		dev-perl/Catalyst-Plugin-Session-State-Cookie
		dev-perl/Catalyst-Plugin-Session-Store-DBIC
		dev-perl/Catalyst-Plugin-Static-Simple
		dev-perl/Catalyst-View-JSON
		dev-perl/CGI-FormBuilder-Source-Perl
		dev-perl/XML-RSS
		dev-perl/MIME-Types
	)
	db? (
		dev-perl/DBI
		dev-perl/DBD-SQLite
		dev-perl/DBIx-Class
		dev-perl/SQL-Translator
	)
	crawl? (
		dev-perl/libwww-perl
		dev-perl/WWW-Mechanize
	)
	module-devel? (
		dev-perl/Dist-Zilla
		dev-perl/Module-Install
		dev-perl/Devel-NYTProf
		dev-perl/perltidy
		dev-perl/Perl-Critic
		dev-perl/Carp-Always
		dev-perl/Modern-Perl
		dev-perl/Software-License
		dev-perl/Pod-Readme
	)

	date? (
		dev-perl/DateTime
		dev-perl/Date-Tiny
		dev-perl/Time-Tiny
		dev-perl/DateTime-Tiny
		dev-perl/Time-modules
	)
	config? (
		dev-perl/Config-Any
		dev-perl/config-general
	)
	cli? (
		sys-apps/ack
		dev-perl/Devel-REPL
		virtual/perl-Module-CoreList
	)
	scripting? (
		dev-perl/Smart-Comments
		dev-perl/Term-ProgressBar-Simple
		dev-perl/IO-All
	)
	spreadsheet? (
		dev-perl/Text-CSV_XS
		dev-perl/Spreadsheet-ParseExcel-Simple
		dev-perl/Spreadsheet-WriteExcel-Simple
	)
	email? (
		dev-perl/Email-Valid
		dev-perl/Email-Sender
	)
"
#>=virtual/perl-ExtUtils-MakeMaker-6.42
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="${COMMON_DEPEND}"
