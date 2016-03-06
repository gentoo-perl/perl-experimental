# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=KMELTZ
MODULE_VERSION=1.9
inherit perl-module

DESCRIPTION='Manage Unix crypt-style password file.'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# Crypt::PasswdMD5
	echo dev-perl/Crypt-PasswdMD5
	# Digest::SHA 2 ( 2.0.0 )
	echo \>=virtual/perl-Digest-SHA-2.00
	# MIME::Base64
	echo virtual/perl-MIME-Base64
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
