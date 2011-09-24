# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=JSWARTZ
MODULE_VERSION=2.14
inherit perl-module

DESCRIPTION="Powerful, high-performance templating for the web and beyond"

SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"
perl_eumm_build() {
	# Test::Class::Most
	echo dev-perl/Test-Class-Most
	# Test::LongString
	echo dev-perl/Test-LongString
}
perl_eumm_configure() {
	# ExtUtils::MakeMaker 6.56
	echo '>=virtual/perl-ExtUtils-MakeMaker-6.56'
}
perl_eumm_prereq_pm() {
	# Capture::Tiny
	echo dev-perl/Capture-Tiny
	# Class::Unload
	echo dev-perl/Class-Unload
	# Devel::GlobalDestruction
	echo dev-perl/Devel-GlobalDestruction
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# Guard
	echo dev-perl/Guard
	# IPC::System::Simple
	echo dev-perl/IPC-System-Simple
	# JSON
	echo dev-perl/JSON
	# Log::Any 0.08
	echo '>=dev-perl/Log-Any-0.80.0'
	# Memoize
	echo virtual/perl-Memoize
	# Method::Signatures::Simple
	echo dev-perl/Method-Signatures-Simple
	# Moose 1.15
	echo '>=dev-perl/Moose-1.15'
	# MooseX::HasDefaults 0.03
	echo '>=dev-perl/MooseX-HasDefaults-0.30.0'
	# MooseX::StrictConstructor 0.13
	echo '>=dev-perl/MooseX-StrictConstructor-0.130.0'
	# Scalar::Util 1.01
	echo '>=virtual/perl-Scalar-List-Utils-1.10.0'
	# Try::Tiny
	echo dev-perl/Try-Tiny
}
RDEPEND="$(perl_eumm_prereq_pm)"
DEPEND="
	$(perl_eumm_configure)
	$(perl_eumm_build)
	$(perl_eumm_prereq_pm)
"
SRC_TEST=do
