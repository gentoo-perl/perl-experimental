# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.16
inherit perl-module

DESCRIPTION='FastMmap session storage backend'

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
	# Cache::FastMmap 1.29 ( 1.290.0 )
	echo \>=dev-perl/Cache-FastMmap-1.290.0
	# Catalyst::ClassData
	echo dev-perl/Catalyst-Runtime
	# Catalyst::Plugin::Session 0.27 ( 0.270.0 )
	echo \>=dev-perl/Catalyst-Plugin-Session-0.270.0
	# Catalyst::Runtime 5.8 ( 5.800.0 )
	echo \>=dev-perl/Catalyst-Runtime-5.800.0
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# MRO::Compat
	echo dev-perl/MRO-Compat
	# MooseX::Emulate::Class::Accessor::Fast
	echo dev-perl/MooseX-Emulate-Class-Accessor-Fast
	# Path::Class
	echo dev-perl/Path-Class
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
