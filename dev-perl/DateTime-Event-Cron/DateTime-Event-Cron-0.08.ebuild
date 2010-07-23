# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=MSISK
inherit perl-module

DESCRIPTION="DateTime extension for generating recurrence sets from crontab lines and files."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-perl/DateTime-0.21
	>=dev-perl/DateTime-Set-0.14.06
	dev-perl/Set-Crontab"
DEPEND="${RDEPEND}"

SRC_TEST=do
