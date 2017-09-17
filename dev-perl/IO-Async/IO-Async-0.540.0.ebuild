# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=PEVANS
MODULE_VERSION=0.54
inherit perl-module

DESCRIPTION='Asynchronous event-driven programming'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_build() {
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::Identity
	echo dev-perl/Test-Identity
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::Refcount
	echo dev-perl/Test-Refcount
}
perl_meta_runtime() {
	# CPS
	echo dev-perl/CPS
	# Exporter 5.57 ( 5.570.0 )
	echo \>=virtual/perl-Exporter-5.570.0
	# File::stat
	echo dev-lang/perl
	# Future 0.05 ( 0.50.0 )
	echo \>=dev-perl/Future-0.50.0
	# IO::Poll
	echo virtual/perl-IO
	# Socket 1.95 ( 1.950.0 )
	echo \>=virtual/perl-Socket-1.950.0
	# Storable
	echo virtual/perl-Storable
	# Time::HiRes
	echo virtual/perl-Time-HiRes
	# perl 5.010 ( 5.10.0 )
	echo \>=dev-lang/perl-5.10.0
}
DEPEND="
	dev-perl/Module-Build
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
