# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=RJBS
MODULE_VERSION=0.012
inherit perl-module

DESCRIPTION="A more casual approach to creating and sending Email:: emails"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	virtual/perl-Carp
	dev-perl/Email-MIME
	>=dev-perl/Email-Sender-1.200.0
	dev-perl/Params-Util
"

DEPEND="
	${RDEPEND}
	virtual/perl-File-Spec
	dev-perl/Moo
	dev-perl/Test-Fatal
	>=virtual/perl-Test-Simple-0.96.0
	dev-perl/Test-Most
"
