use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'SQLite::Work',
    license             => 'perl',
    dist_author         => 'Kathryn Andersen',
    dist_version_from   => 'lib/SQLite/Work.pm',
	requires            => {
	'Text::NeatTemplate' => 0.07,
	'Getopt::Long' => 2.34,
	'Pod::Usage' => 0,
	'Getopt::ArgvFile' => 1.10,
	'POSIX' => 0,
	'CGI' => 3.10,
	'DBI' => 0,
	'DBD::SQLite' => 0,
	'File::Temp' => 0,
	},
    build_requires => {
        'Test::More' => 0,
    },
    create_makefile_pl => 'passthrough',
    script_files => [qw(scripts/sqlreport scripts/sqlw_mail scripts/sqlw_import)],

);

$builder->create_build_script();
