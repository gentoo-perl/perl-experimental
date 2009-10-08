# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=TIMA
inherit perl-module

DESCRIPTION="A portable client library for working with and managing Amazon S3 buckets and keys."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
DEPEND="
	dev-perl/Class-Accessor
    dev-perl/Digest-HMAC
	dev-perl/libwww-perl
	dev-perl/LWP-UserAgent-Determined
    dev-perl/XML-Simple
    dev-perl/URI
    test? (
		dev-perl/Digest-MD5-File
	)
"
