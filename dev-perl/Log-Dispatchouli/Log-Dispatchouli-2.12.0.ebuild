# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=2.012
inherit perl-module

DESCRIPTION='a simple wrapper around Log::Dispatch'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Log::Dispatch::File -> Log-Dispatch
# Log::Dispatch::Screen -> Log-Dispatch
# Log::Dispatch::Syslog -> Log-Dispatch
# Scalar::Util - Scalar-List-Utils
# File::Spec::Functions -> File-Spec
RDEPEND="
	virtual/perl-Carp
	virtual/perl-File-Spec
	dev-perl/Log-Dispatch
	dev-perl/Log-Dispatch-Array
	dev-perl/Params-Util
	virtual/perl-Scalar-List-Utils
	dev-perl/String-Flogger
	dev-perl/Sub-Exporter
	>=dev-perl/Sub-Exporter-GlobExporter-0.2.0
	>=virtual/perl-Sys-Syslog-0.160.0
	>=dev-perl/Try-Tiny-0.40.0
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		virtual/perl-File-Spec
		virtual/perl-File-Temp
		dev-perl/Test-Deep
		dev-perl/Test-Fatal
		>=virtual/perl-Test-Simple-0.960.0
	)
"
