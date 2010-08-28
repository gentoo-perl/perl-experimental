# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=APEIRON
inherit perl-module

DESCRIPTION="A Glimpse at an Enlightened Perl"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~x86 ~amd64" # yet to test

IUSE="+basic-toolchain +testing oop async webdev db crawl module-devel date
config cli scripting xml +exceptions spreadsheet email scalability"
COMMON_DEPEND="
	basic-toolchain? (
		dev-perl/App-cpanminus
		dev-perl/local-lib
		virtual/perl-version
	)
	exceptions? (
		dev-perl/Try-Tiny
		dev-perl/TryCatch
		dev-perl/autodie
	)
	testing? (
		dev-perl/Devel-Cover
		dev-perl/Test-Exception
		dev-perl/Test-Memory-Cycle
		dev-perl/Test-Most
		dev-perl/Test-Pod
		dev-perl/Test-Pod-Coverage
		virtual/perl-Test-Simple
	)
	oop? (
		dev-perl/Task-Moose
	)
	async? (
		dev-perl/POE
	)
	xml? (
		dev-perl/XML-Generator-PerlData
		dev-perl/XML-LibXML
		dev-perl/XML-LibXSLT
		dev-perl/XML-SAX
		dev-perl/XML-SAX-Writer
	)
	webdev? (
		dev-perl/CGI-FormBuilder-Source-Perl
		dev-perl/MIME-Types
		dev-perl/Task-Catalyst
		dev-perl/Template-Toolkit
		dev-perl/XML-Atom
		dev-perl/XML-RSS
	)
	db? (
		dev-perl/DBD-SQLite
		dev-perl/DBI
		dev-perl/DBIx-Class
		dev-perl/DBIx-Class-Schema-Loader
		dev-perl/SQL-Translator
	)
	crawl? (
		dev-perl/HTTP-Lite
		dev-perl/WWW-Mechanize
		dev-perl/WWW-Mechanize-TreeBuilder
		dev-perl/libwww-perl
	)
	module-devel? (
		dev-perl/CPAN-Uploader
		dev-perl/Carp-Always
		dev-perl/Devel-NYTProf
		dev-perl/Dist-Zilla
		dev-perl/Modern-Perl
		dev-perl/Module-Install
		dev-perl/Perl-Critic
		dev-perl/Perl-Version
		dev-perl/Pod-Readme
		dev-perl/Software-License
		dev-perl/perltidy
	)
	scalability? (
		dev-perl/CHI
	)
	date? (
		dev-perl/Date-Tiny
		dev-perl/DateTime
		dev-perl/DateTime-Tiny
		dev-perl/Time-Tiny
		dev-perl/Time-modules
	)
	config? (
		dev-perl/Config-Any
		dev-perl/config-general
	)
	cli? (
		dev-perl/App-perlbrew
		dev-perl/App-Nopaste
		dev-perl/Devel-REPL
		sys-apps/ack
		virtual/perl-Module-CoreList
	)
	scripting? (
		dev-perl/IO-All
		dev-perl/Smart-Comments
		dev-perl/Term-ProgressBar-Simple
	)
	spreadsheet? (
		dev-perl/Spreadsheet-ParseExcel-Simple
		dev-perl/Spreadsheet-WriteExcel-Simple
		dev-perl/Text-CSV_XS
	)
	email? (
		dev-perl/Email-Sender
		dev-perl/Email-Valid
	)
"
#>=virtual/perl-ExtUtils-MakeMaker-6.42
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="${COMMON_DEPEND}"

src_prepare(){
	# Workaround for http://rt.cpan.org/Public/Bug/Display.html?id=53211
	sed -i 's/auto_install;//g' Makefile.PL  || die "Cant patch out auto_install";
}
