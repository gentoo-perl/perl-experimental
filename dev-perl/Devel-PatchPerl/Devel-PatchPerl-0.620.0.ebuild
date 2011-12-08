# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BINGOS
MODULE_VERSION=0.62
inherit perl-module

DESCRIPTION='Patch perl source a la Devel::PPPort'\''s buildperl.pl'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# File::pushd 1.00 ( 1.0.0 )
	echo \>=dev-perl/File-pushd-1.0.0
	# IO::File
	echo virtual/perl-IO
	# IPC::Cmd 0.40 ( 0.400.0 )
	echo \>=virtual/perl-IPC-Cmd-0.400
	# MIME::Base64
	echo virtual/perl-MIME-Base64
	# perl v5.6.0 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
