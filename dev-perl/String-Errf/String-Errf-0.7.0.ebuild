# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.007
inherit perl-module

DESCRIPTION="a simple sprintf-like dialect"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# List::Util -> Scalar-List-Utils
# Date::Format -> TimeDate
RDEPEND="
	virtual/perl-Carp
	dev-perl/Params-Util
	virtual/perl-Scalar-List-Utils
	>=dev-perl/String-Formatter-0.102.81
	dev-perl/Sub-Exporter
	virtual/perl-Time-Piece
	virtual/perl-parent
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		dev-perl/TimeDate
		>=dev-perl/JSON-2.0.0
		>=virtual/perl-Test-Simple-0.960.0
		virtual/perl-autodie
	)
"
