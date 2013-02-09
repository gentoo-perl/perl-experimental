# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=MRAMBERG
MODULE_VERSION=1.05
inherit perl-module

DESCRIPTION='A Wiki with a tree'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
	# File::Copy::Recursive
	echo dev-perl/File-Copy-Recursive
}
perl_meta_build() {
	# Email::Sender::Simple 0.102370 ( 0.102.370 )
	echo \>=dev-perl/Email-Sender-0.102.370
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
	# SQL::Translator 0.09006 ( 0.90.60 )
	echo \>=dev-perl/SQL-Translator-0.90.60
	# Test::Differences
	echo dev-perl/Test-Differences
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# Test::WWW::Mechanize::Catalyst 0.51 ( 0.510.0 )
	echo \>=dev-perl/Test-WWW-Mechanize-Catalyst-0.510.0
	# WWW::Mechanize 1.54 ( 1.540.0 )
	echo \>=dev-perl/WWW-Mechanize-1.540.0
	# WWW::Mechanize::TreeBuilder 1.10000 ( 1.100.0 )
	echo \>=dev-perl/WWW-Mechanize-TreeBuilder-1.100.0
}
perl_meta_runtime() {
	# Algorithm::Diff 1.1901 ( 1.190.100 )
	echo \>=dev-perl/Algorithm-Diff-1.190.100
	# Algorithm::Merge
	echo dev-perl/Algorithm-Merge
	# Archive::Zip 1.14 ( 1.140.0 )
	echo \>=dev-perl/Archive-Zip-1.140.0
	# Cache::FastMmap 1.31 ( 1.310.0 )
	echo \>=dev-perl/Cache-FastMmap-1.310.0
	# Catalyst 5.71001 ( 5.710.10 )
	echo \>=dev-perl/Catalyst-Runtime-5.710.10
	# Catalyst::Action::RenderView 0.07 ( 0.70.0 )
	echo \>=dev-perl/Catalyst-Action-RenderView-0.70.0
	# Catalyst::Authentication::Store::DBIx::Class 0.101 ( 0.101.0 )
	echo \>=dev-perl/Catalyst-Authentication-Store-DBIx-Class-0.101.0
	# Catalyst::Controller::HTML::FormFu 0.03007 ( 0.30.70 )
	echo \>=dev-perl/Catalyst-Controller-HTML-FormFu-0.30.70
	# Catalyst::Engine::PSGI
	echo dev-perl/Catalyst-Engine-PSGI
	# Catalyst::Model::DBIC::Schema 0.01 ( 0.10.0 )
	echo \>=dev-perl/Catalyst-Model-DBIC-Schema-0.10.0
	# Catalyst::Plugin::Authentication 0.10005 ( 0.100.50 )
	echo \>=dev-perl/Catalyst-Plugin-Authentication-0.100.50
	# Catalyst::Plugin::Cache 0.08 ( 0.80.0 )
	echo \>=dev-perl/Catalyst-Plugin-Cache-0.80.0
	# Catalyst::Plugin::ConfigLoader 0.13 ( 0.130.0 )
	echo \>=dev-perl/Catalyst-Plugin-ConfigLoader-0.130.0
	# Catalyst::Plugin::I18N
	echo dev-perl/Catalyst-Plugin-I18N
	# Catalyst::Plugin::Session::State::Cookie 0.11 ( 0.110.0 )
	echo \>=dev-perl/Catalyst-Plugin-Session-State-Cookie-0.110.0
	# Catalyst::Plugin::Session::Store::Cache
	echo dev-perl/Catalyst-Plugin-Session-Store-Cache
	# Catalyst::Plugin::Setenv
	echo dev-perl/Catalyst-Plugin-Setenv
	# Catalyst::Plugin::Static::Simple 0.07 ( 0.70.0 )
	echo \>=dev-perl/Catalyst-Plugin-Static-Simple-0.70.0
	# Catalyst::Plugin::SubRequest 0.15 ( 0.150.0 )
	echo \>=dev-perl/Catalyst-Plugin-SubRequest-0.150.0
	# Catalyst::Plugin::Unicode 0.8 ( 0.800.0 )
	echo \>=dev-perl/Catalyst-Plugin-Unicode-0.800.0
	# Catalyst::View::Email 0.14 ( 0.140.0 )
	echo \>=dev-perl/Catalyst-View-Email-0.140.0
	# Catalyst::View::Email::Template
	echo dev-perl/Catalyst-View-Email
	# Catalyst::View::JSON 0.26 ( 0.260.0 )
	echo \>=dev-perl/Catalyst-View-JSON-0.260.0
	# Catalyst::View::TT 0.23 ( 0.230.0 )
	echo \>=dev-perl/Catalyst-View-TT-0.230.0
	# Config::General
	echo dev-perl/config-general
	# Config::JFDI
	echo dev-perl/Config-JFDI
	# Crypt::CBC 2.12 ( 2.120.0 )
	echo \>=dev-perl/crypt-cbc-2.120.0
	# DBD::SQLite 1.27 ( 1.270.0 )
	echo \>=dev-perl/DBD-SQLite-1.270.0
	# DBIx::Class 0.08 ( 0.80.0 )
	echo \>=dev-perl/DBIx-Class-0.80.0
	# DBIx::Class::DateTime::Epoch 0.04 ( 0.40.0 )
	echo \>=dev-perl/DBIx-Class-DateTime-Epoch-0.40.0
	# DBIx::Class::EncodedColumn
	echo dev-perl/DBIx-Class-EncodedColumn
	# DBIx::Class::TimeStamp 0.11 ( 0.110.0 )
	echo \>=dev-perl/DBIx-Class-TimeStamp-0.110.0
	# Data::Page 2.00 ( 2.0.0 )
	echo \>=dev-perl/Data-Page-2.0.0
	# DateTime 0.28 ( 0.280.0 )
	echo \>=dev-perl/DateTime-0.280.0
	# DateTime::Format::Mail
	echo dev-perl/DateTime-Format-Mail
	# Directory::Scratch 0.14 ( 0.140.0 )
	echo \>=dev-perl/Directory-Scratch-0.140.0
	# Encode 2.31 ( 2.310.0 )
	echo \>=virtual/perl-Encode-2.31
	# FCGI::ProcManager
	echo dev-perl/FCGI-ProcManager
	# File::Copy::Recursive
	echo dev-perl/File-Copy-Recursive
	# File::MMagic 1.27 ( 1.270.0 )
	echo \>=dev-perl/File-MMagic-1.270.0
	# HTML::Entities 3.60 ( 3.600.0 )
	echo \>=dev-perl/HTML-Parser-3.600.0
	# HTML::FormFu 0.02000 ( 0.20.0 )
	echo \>=dev-perl/HTML-FormFu-0.20.0
	# HTML::FormFu::Element::reCAPTCHA
	echo dev-perl/HTML-FormFu
	# HTML::FormFu::Model::DBIC
	echo dev-perl/HTML-FormFu-Model-DBIC
	# HTML::Strip 1.04 ( 1.40.0 )
	echo \>=dev-perl/HTML-Strip-1.40.0
	# HTML::TagCloud
	echo dev-perl/HTML-TagCloud
	# HTML::Toc
	echo dev-perl/HTML-Toc
	# IO::File 1.14 ( 1.140.0 )
	echo \>=virtual/perl-IO-1.14
	# IO::Scalar
	echo dev-perl/IO-stringy
	# Image::ExifTool
	echo media-libs/exiftool
	# Image::Math::Constrain
	echo dev-perl/Image-Math-Constrain
	# Imager
	echo dev-perl/Imager
	# KinoSearch1 1.00 ( 1.0.0 )
	echo \>=dev-perl/KinoSearch1-1.0.0
	# LWP::Simple
	echo dev-perl/libwww-perl
	# MRO::Compat 0.10 ( 0.100.0 )
	echo \>=dev-perl/MRO-Compat-0.100.0
	# Module::Pluggable::Ordered 1.4 ( 1.400.0 )
	echo \>=dev-perl/Module-Pluggable-Ordered-1.400.0
	# Moose
	echo dev-perl/Moose
	# Net::Amazon
	echo dev-perl/Net-Amazon
	# Number::Format
	echo dev-perl/Number-Format
	# Plack 0.9974 ( 0.997.400 )
	echo \>=dev-perl/Plack-0.997.400
	# Pod::Simple::HTML 3.01 ( 3.10.0 )
	echo \>=virtual/perl-Pod-Simple-3.01
	# Syntax::Highlight::Engine::Kate
	echo dev-perl/Syntax-Highlight-Engine-Kate
	# Template 2.20 ( 2.200.0 )
	echo \>=dev-perl/Template-Toolkit-2.200.0
	# Template::Plugin::JavaScript
	echo dev-perl/Template-Plugin-JavaScript
	# Term::Prompt
	echo dev-perl/Term-Prompt
	# Text::Context 3.5 ( 3.500.0 )
	echo \>=dev-perl/Text-Context-3.500.0
	# Text::MultiMarkdown 1.000032 ( 1.0.32 )
	echo \>=dev-perl/Text-MultiMarkdown-1.0.32
	# Text::Password::Pronounceable
	echo dev-perl/Text-Password-Pronounceable
	# Text::Textile
	echo dev-perl/Text-Textile
	# URI 1.37 ( 1.370.0 )
	echo \>=dev-perl/URI-1.370.0
	# URI::Fetch
	echo dev-perl/URI-Fetch
	# URI::Find
	echo dev-perl/URI-Find
	# XML::Feed
	echo dev-perl/XML-Feed
	# XML::LibXML 1.66 ( 1.660.0 )
	echo \>=dev-perl/XML-LibXML-1.660.0
	# XML::LibXSLT 1.66 ( 1.660.0 )
	echo \>=dev-perl/XML-LibXSLT-1.660.0
	# YAML 0.36 ( 0.360.0 )
	echo \>=dev-perl/yaml-0.360.0
	# parent
	echo virtual/perl-parent
	# perl v5.8.4 ( 5.8.4 )
	echo \>=dev-lang/perl-5.8.4
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
