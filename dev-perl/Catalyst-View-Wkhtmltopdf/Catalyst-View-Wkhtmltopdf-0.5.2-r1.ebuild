# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ARTHAS
MODULE_VERSION=0.5.2
inherit perl-module

DESCRIPTION='Catalyst view to convert HTML (or TT) content to PDF using wkhtmltopdf'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Catalyst::View::TT
	echo dev-perl/Catalyst-View-TT
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# URI::Escape
	echo dev-perl/URI
	# version 0.77 ( 0.770.0 )
	echo \>=virtual/perl-version-0.77
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
