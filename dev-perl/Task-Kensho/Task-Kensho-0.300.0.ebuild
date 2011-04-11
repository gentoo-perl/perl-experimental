# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
MODULE_AUTHOR=APEIRON
MODULE_VERSION="0.30"
inherit perl-module

DESCRIPTION="A Glimpse at an Enlightened Perl"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~x86 ~amd64"

IUSE="+basic-toolchain +testing +oop async webdev db crawl module-devel date
config cli scripting xml +exceptions spreadsheet email scalability +logging"
COMMON_DEPEND="
	basic-toolchain? (
		dev-perl/Task-Kensho-Toolchain
	)
	exceptions? (
		dev-perl/Task-Kensho-Exceptions
	)
	testing? (
		dev-perl/Task-Kensho-Testing
	)
	oop? (
		dev-perl/Task-Kensho-OOP
	)
	async? (
		dev-perl/Task-Kensho-Async
	)
	xml? (
		dev-perl/Task-Kensho-XML
	)
	webdev? (
		dev-perl/Task-Kensho-WebDev
	)
	db? (
		dev-perl/Task-Kensho-DBDev
	)
	crawl? (
		dev-perl/Task-Kensho-WebCrawling
	)
	module-devel? (
		dev-perl/Task-Kensho-ModuleDev
	)
	scalability? (
		dev-perl/Task-Kensho-Scalability
	)
	date? (
		dev-perl/Task-Kensho-Dates
	)
	config? (
		dev-perl/Task-Kensho-Config
	)
	cli? (
		dev-perl/Task-Kensho-CLI
	)
	scripting? (
		dev-perl/Task-Kensho-Hackery
	)
	spreadsheet? (
		dev-perl/Task-Kensho-ExcelCSV
	)
	email? (
		dev-perl/Task-Kensho-Email
	)
	logging? (
		dev-perl/Task-Kensho-Logging
	)
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.42
"
RDEPEND="${COMMON_DEPEND}"

#src_prepare(){
	# Workaround for http://rt.cpan.org/Public/Bug/Display.html?id=53211
	#sed -i 's/auto_install;//g' Makefile.PL  || die "Cant patch out auto_install";
#}
