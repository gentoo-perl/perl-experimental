# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MIKO
MODULE_VERSION=1.16
inherit perl-module

DESCRIPTION='A  debugging routine collection for displaying the values of variables with a minimum of coding.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_runtime() {
	# Class::ISA
	echo dev-perl/Class-ISA
	# Devel::StackTrace
	echo dev-perl/Devel-StackTrace
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# String::Util
	echo dev-perl/String-Util
	# Term::ReadKey
	echo dev-perl/TermReadKey
	# Text::TabularDisplay
	echo dev-perl/Text-TabularDisplay
	# Tie::IxHash
	echo dev-perl/Tie-IxHash
	# perl 5.003 ( 5.3.0 )
	echo \>=dev-lang/perl-5.3.0
}
DEPEND="
	dev-perl/Module-Build
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
