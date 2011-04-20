# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
MODULE_VERSION="1.9902-TRIAL"
MODULE_AUTHOR=DOY
MODULE_DZIL_TRIAL=1
#MODULE_AUTHOR=DROLSKY
#MODULE_AUTHOR=FLORA
inherit perl-module perl-declaredeps

DESCRIPTION="A postmodern object system for Perl 5"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# Moose::Conflicts source.
conflict Catalyst 5.800.280
conflict Devel-REPL 1.003008 # OLD
#conflict Devel-REPL 1.3.8 # NEW
conflict Fey 0.360
conflict Fey-ORM 0.350
conflict File-ChangeNotify 0.150.0;
conflict KiokuDB 0.490;
conflict Markdent 0.160;
conflict MooseX-Aliases 0.70;
conflict MooseX-AlwaysCoerce 0.50;
conflict MooseX-Attribute-Deflator 1.130;
conflict MooseX-Attribute-Dependent 1;
conflict MooseX-Attribute-Prototype 0.100;
conflict MooseX-AttributeHelpers 0.22;  # OLD
#conflict MooseX-AttributeHelpers 0.220; # NEW
conflict MooseX-AttributeInflate 0.20;
conflict MooseX-ClassAttribute 0.17;   # OLD
#conflict MooseX-ClassAttribute 0.170; # NEW
conflict MooseX-FollowPBP 0.20;
conflict MooseX-HasDefaults 0.20;
conflict MooseX-InstanceTracking 0.40;
conflict MooseX-LazyRequire 0.50;
conflict MooseX-NonMoose 0.150.0;
conflict MooseX-POE 0.205.0;
conflict MooseX-Params-Validate 0.50;
conflict MooseX-Role-Cmd 0.60;
conflict MooseX-Role-WithOverloading 0.070;
conflict MooseX-SemiAffordanceAccessor 0.50;
conflict MooseX-Singleton 0.240;
conflict MooseX-StrictConstructor 0.08;  # OLD
#conflict MooseX-StrictConstructor 0.80; # NEW
conflict MooseX-Types 0.190;
conflict MooseX-UndefTolerant 0.40;
conflict Pod-Elemental 0.93.280;
conflict namespace-autoclean 0.08; # OLD
#conflict namespace-autoclean 0.80; # NEw
hard_conflict Class-MOP;

depend Data-OptList;
depend Devel-GlobalDestruction;
depend Eval-Closure
depend List-MoreUtils 0.120
depend MRO-Compat 0.05  # OLD VERSION SCHEME
#depend MRO-Compat 0.50 # NEW VERSION SCHEME
depend Package-DeprecationManager 0.10    # OLD VERSION SCHEME
# depend Package-DeprecationManager 0.100 # NEW VERSION SCHEME
depend Package-Stash 0.160
depend Package-Stash-XS 0.170
depend Params-Util 1
depend-virtual Scalar-List-Utils 1.19   # OLD VERSION SCHEME
#depend-virtual Scalar-List-Utils 1.190 # NEW VERSION SCHEME
depend Sub-Exporter 0.980
depend Sub-Name 0.05  # OLD VERSION SCHEME
#depend Sub-Name 0.50 # NEW VERSION SCHEME
depend Try-Tiny 0.20

test-depend-virtual Test-Simple 0.88   # OLD
#test-depend-virtual Test-Simple 0.880 # NEW
test-depend 		Test-Fatal 0.001   # OLD
# test-depend         Test-Fatal 0.1   # NEW
test-depend 		Test-Requires 0.50

bdepend Dist-CheckConflicts 0.20
bdepend-virtual ExtUtils-MakeMaker 6.56     # OLD VERSION SCHEME
# bdepend-virtual ExtUtils-MakeMaker 6.560  # NEW VERSION SCHEME 

ddep_setup;

SRC_TEST=do
