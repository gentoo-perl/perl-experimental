# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# @ECLASS: perl-virtual.eclass
# @MAINTAINER:
# perl@gentoo.org
# @BLURB: Set up virtuals for perl modules more easily
# @DESCRIPTION:
# The perl-virtual.eclass sets all possible ebuild variables. It uses the
# PM_PROVIDER array to set the any-of-many runtime dependencies.
# @EXAMPLE:
# An ebuild might look like this:
#
# @CODE
#
# PM_PROVIDER+=( "~dev-lang/perl-5.12.3" )
# PM_PROVIDER+=( "5.10.1" )
# inherit perl-virtual
# KEYWORDS="~amd64 ~x86"
# IUSE=""
#
# @CODE

# @ECLASS-VARIABLE: PM_PROVIDER
# @DEFAULT_UNSET
# @DESCRIPTION:
# The array should list the providers to be added to RDEPEND
# with preference from highest to lowest.
# If an element starts with "5", it is considered a ~dev-lang/perl version.
# If PM_PROVIDER is not defined, RDEPEND isn't set.
# ~perl-core/${PN#perl-}-${PV} is added at the end automatically.

DESCRIPTION="Virtual for ${PN#perl-}"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
IUSE=""

if [[ $(declare -p PM_PROVIDER 2>&-) != "declare -a PM_PROVIDER="* ]] ; then
	RDEPEND="~perl-core/${PN#perl-}-${PV}"
elif [[ ${#PM_PROVIDER[*]} -gt 0 ]] ; then
	RDEPEND="|| ( ${PM_PROVIDER[@]/#5/~dev-lang/perl-5} ~perl-core/${PN#perl-}-${PV} )"
fi
