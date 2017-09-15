# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=FANGLY
MODULE_VERSION=0.4.5
inherit perl-module

DESCRIPTION='Executable Uniform Command-Line Interface Descriptions'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

PERL_RM_FILES=(
	t/pod.t
	t/pod_coverage.t
)
# Pod::Select -> Pod-Parser
# Pod::PlainText -> Pod-Parser
# File::Basename -> perl
# File::Spec::Functions -> File-Spec
# List::Util -> Scalar-List-Utils
RDEPEND="
	virtual/perl-version
	virtual/perl-Pod-Parser
	virtual/perl-File-Spec
	virtual/perl-Scalar-List-Utils
	virtual/perl-Text-Balanced
"
DEPEND="
	${RDEPEND}
	dev-perl/Module-Build
	test? (
		virtual/perl-Test-Simple
		virtual/perl-Pod-Checker
	)
"
