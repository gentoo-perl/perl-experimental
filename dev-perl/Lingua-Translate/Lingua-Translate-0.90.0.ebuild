# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=SAMV
MODULE_VERSION=0.09
inherit perl-module

DESCRIPTION='Translate text from one language to another'
RESTRICT=test
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_runtime() {
	# HTML::TokeParser 2.19 ( 2.190.0 )
	echo \>=dev-perl/HTML-Parser-2.190.0
	# I18N::LangTags 0.27 ( 0.270.0 )
	echo \>=dev-lang/perl-0.270.0
	# LWP::UserAgent 1.73 ( 1.730.0 )
	echo \>=dev-perl/libwww-perl-1.730.0
	# Pod::Constants 0.15 ( 0.150.0 )
	echo \>=dev-perl/Pod-Constants-0.150.0
	# Unicode::MapUTF8 1.09 ( 1.90.0 )
	echo \>=dev-perl/Unicode-MapUTF8-1.90.0
}
DEPEND="
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
