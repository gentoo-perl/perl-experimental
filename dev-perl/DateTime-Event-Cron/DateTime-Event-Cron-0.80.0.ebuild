# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
MODULE_AUTHOR=MSISK
MODULE_VERSION=0.08
inherit perl-module

DESCRIPTION="DateTime extension for generating recurrence sets from crontab lines and files."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-perl/DateTime-0.210.0
	>=dev-perl/DateTime-Set-0.140.600
	dev-perl/Set-Crontab"
DEPEND="${RDEPEND}"

SRC_TEST=do
