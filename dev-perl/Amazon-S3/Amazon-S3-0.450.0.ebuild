# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_VERSION=0.45
MODULE_AUTHOR=TIMA
inherit perl-module

DESCRIPTION="Amazon S3 bucket and key management client library"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/Class-Accessor
	dev-perl/Digest-HMAC
	dev-perl/libwww-perl
	dev-perl/LWP-UserAgent-Determined
	dev-perl/XML-Simple
	dev-perl/URI
"
DEPEND="
	${RDEPEND}
	test? (
		dev-perl/Digest-MD5-File
	)
"
SRC_TEST="do parallel"
