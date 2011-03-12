# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="3"
MODULE_AUTHOR=APEIRON
MODULE_VERSION="0.27"
inherit perl-module

DESCRIPTION="A glimpse at an Enlightened Perl (web development)"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+catalyst +tt +cgi-formbuilder-perlconfig +xmlrss +xmlatom +mimetypes"
COMMON_DEPEND="
	catalyst? ( dev-perl/Task-Catalyst )
	tt? ( dev-perl/Template-Toolkit )
	cgi-formbuilder-perlconfig? ( dev-perl/CGI-FormBuilder-Source-Perl )
	xmlrss? ( dev-perl/XML-RSS )
	xmlatom? ( dev-perl/XML-Atom )
	mimetypes? ( dev-perl/MIME-Types )
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
