# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=PIP
MODULE_VERSION=1.12.B55J2qn
MODULE_A_EXT="tgz"
inherit perl-module

DESCRIPTION='tidy indenting of XML documents'
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT=test
PATCHES=(
	"${FILESDIR}/BuildPL-MathBaseCnv-1.6.patch"
)
perl_check_module_version() {
	# this module sucks, and version sanity check fails
	echo;
}
perl_meta_build() {
	# Test
	echo virtual/perl-Test
	# Test::Pod
	echo dev-perl/Test-Pod
	# Test::Pod::Coverage
	echo dev-perl/Test-Pod-Coverage
}
perl_meta_runtime() {
	# Math::BaseCnv
	echo dev-perl/Math-BaseCnv
	# XML::XPath
	echo dev-perl/XML-XPath
	# XML::XPath::XMLParser
	echo dev-perl/XML-XPath
}
DEPEND="
	dev-perl/Module-Build
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
