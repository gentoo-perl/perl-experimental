# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# @ECLASS: perl-versions.eclass
# @MAINTAINER:
# perl@gentoo.org
# Kent Fredric <kentnl@cpan.org>
# @BLURB: Perl versioning functions
# @DESCRIPTION:
# The perl-version eclass contains an assortment of functions for denormalizing versions
# in order to streamline version bumps and minimise risk of accidental failure to update
# MODULE_VERSION and unify all the ways of turning arbitrary normalised versions back into
# a form used upstream.

# expand-tail 5 => 005
# expand-tail 5.5 => 005005
perl-version-expand-tail() {
	local tail=$1
	if [ -z "${tail}" ]; then
		echo '000';
		return;
	fi
	# Tail with no segments
	if [ "${tail%%.*}" = "${tail}" ]; then
		printf "%03d" "$tail"
		return;
	fi
	local head="${tail%%.*}"
	local rest=$( perl-version-expand-tail "${tail#*.}" )
	printf "%03d%s" $head $rest;
	return;
}

# float 5.1   => 5.001
# float 5.10  => 5.010
# float 5.100 => 5.100
# float 5.1.1 => 5.001001
perl-version-float() {
	local version=$1
	local major=${version%%.*}
	local tail=${version#*.}
	if [ "$tail" = "$version" ]; then
		tail=000;
	else
		tail=$( perl-version-expand-tail "${tail}" )
	fi
	printf "%s.%s" "$major" "$tail";
	return;
}

# float_n 5.201.505.200 8 => 5.20150520
perl-version-float_n() {
	local version=$1
	local mantissa=$2
	local major=${version%%.*}
	if [ "$mantissa" -lt 1 ]; then
		printf "%s" $major;
		return;
	fi
	local tail=${version#*.}
	if [ "$tail" = "$version" ]; then
		tail=000;
	else
		tail=$( perl-version-expand-tail "${tail}" )
	fi
	if [ "${#tail}" -lt $mantissa ]; then
		local pad=$(( $mantissa - ${#tail} ));
		printf "%s.%s%0${pad}d" "${major}" "${tail}" 0
		return
	fi
	printf "%s.%s" "${major}" "${tail:0:$mantissa}"
}

# denormalize 5.201.505.200 float_n 8 => 5.20150520
perl-version-denormalize() {
	local version=$1;
	local scheme=$2;
	shift
	shift
	case "${scheme}" in
		"float_n")
			perl-version-float_n $version "$@"
			return
			;;
		*)
			die "Unknown version scheme ${scheme}"
			;;
	esac
}

