# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.33
inherit perl-module

DESCRIPTION='A glimpse at an Enlightened Perl.'

SLOT="0"
KEYWORDS="~amd64"

IUSE="+basic-toolchain +testing +oop async webdev db crawl module-devel date
config cli scripting xml +exceptions spreadsheet email scalability +logging"

perl_meta_configure() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.360.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.360.0
}

feature() {
	local name="$1";
	shift;
	echo "$name? (";
	echo "$@";
	echo ")";
}
sfeature() {
	local name="$1";
	local suffix="$2";
	feature "$name" "dev-perl/Task-Kensho-${suffix}"
}

perl_meta_runtime() {
	sfeature 'basic-toolchain' 'Toolchain';
	sfeature 'exceptions' 'Exceptions';
	sfeature 'testing' 'Testing';
	sfeature 'oop' 'OOP';
	sfeature 'async' 'Async';
	sfeature 'xml' 'XML';
	sfeature 'webdev' 'WebDev';
	sfeature 'db' 'DBDev';
	sfeature 'crawl' 'WebCrawling';
	sfeature 'module-devel' 'ModuleDev';
	sfeature 'scalability' 'Scalability';
	sfeature 'date' 'Dates';
	sfeature 'config' 'Config';
	sfeature 'cli' 'CLI';
	sfeature 'scripting' 'Hackery';
	sfeature 'spreadsheet' 'ExcelCSV';
	sfeature 'email' 'Email';
	sfeature 'logging' 'Logging';
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
