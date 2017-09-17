# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=CFRANKS
MODULE_VERSION=0.09010
inherit perl-module

DESCRIPTION='Integrate HTML::FormFu with DBIx::Class'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
}
perl_meta_build() {
	# DateTime::Format::SQLite
	echo dev-perl/DateTime-Format-SQLite
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	# SQL::Translator
	echo dev-perl/SQL-Translator
}
perl_meta_runtime() {
	# DBD::SQLite
	echo dev-perl/DBD-SQLite
	# DBIx::Class 0.08108 ( 0.81.80 )
	echo \>=dev-perl/DBIx-Class-0.81.80
	# HTML::FormFu 0.09010 ( 0.90.100 )
	echo \>=dev-perl/HTML-FormFu-0.90.100
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# Task::Weaken
	echo dev-perl/Task-Weaken
	# YAML::Syck
	echo dev-perl/YAML-Syck
	# perl v5.8.1 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
