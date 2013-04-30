# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=MTHURN
MODULE_VERSION="2.508"
inherit perl-module

DESCRIPTION="Virtual base class for WWW searches"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/Bit-Vector
	dev-perl/DateManip
	dev-perl/File-Slurp
	dev-perl/HTML-Parser
	>=dev-perl/HTML-Tree-0.510.0
	dev-perl/libwww-perl
	dev-perl/URI
	dev-perl/User"
DEPEND="${RDEPEND}"
#	test? ( dev-perl/Test-Pod
#		dev-perl/Test-Pod-Coverage
#		dev-perl/Test-File
#		dev-perl/IO-Capture )"
#
#SRC_TEST=do
