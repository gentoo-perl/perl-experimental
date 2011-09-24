# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=JWIED
MODULE_VERSION=1.04
inherit perl-module

DESCRIPTION="Client for the Bugzilla web services API"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_eumm_configure() {
	#perl 5.010000
	echo \>=dev-lang/perl-5.10.0
	#ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	#Getopt::Long
	echo virtual/perl-Getopt-Long
	#Data::Dumper
	echo virtual/perl-Data-Dumper
}
perl_eumm_prereq_pm() {
	# XML::Parser
	echo dev-perl/XML-Parser
	# XML::Writer
	echo dev-perl/XML-Writer
	# URI
	echo dev-perl/URI
}
RDEPEND="$(perl_eumm_prereq_pm)"
DEPEND="
	$(perl_eumm_configure)
	$(perl_eumm_prereq_pm)
"

SRC_TEST="do"
