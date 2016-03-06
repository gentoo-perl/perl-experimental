# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.29
inherit perl-module

DESCRIPTION='A glimpse at an Enlightened Perl (web development).'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+catalyst +tt +cgi-formbuilder-perlconfig +xmlrss +xmlatom +mimetypes +plack"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
}
feature() {
	local name="$1";
	shift;
	echo "$name? (";
	echo "$@";
	echo ")";
}
perl_meta_runtime() {
	feature "catalyst" "dev-perl/Catalyst-Runtime"
	# Plack
	feature "plack" "dev-perl/Plack"
	feature "tt" "dev-perl/Template-Toolkit"
	feature "cgi-formbuilder-perlconfig" "dev-perl/CGI-FormBuilder-Source-Perl"
	feature "xmlrss"  "dev-perl/XML-RSS"
	feature "xmlatom" "dev-perl/XML-Atom"
	# MIME::Types
	feature "mimetypes" "dev-perl/MIME-Types"
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
