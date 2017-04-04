use 5.012;

use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name        => 'jscan',
    dist_version       => 0.001,
    dist_abstract      => 'command line scanning utility',
    license            => 'GPL_3',
    dist_author        => q{Jeremy Volkening <jdv@base2bio.com>},
    configure_requires => {
        'Module::Build' => 0,
    },
    build_requires => {
        'Test::More'    => 0,
        'File::Compare' => 0,
    },
    requires => {
        'List::Util'  => 0,
        'File::Which' => 0,
    },
    meta_merge => {
        resources => {
            repository => 'https://github.com/jvolkening/jscan'
        }
    },
    add_to_cleanup => [ 'jscan-*' ],
    create_license => 1,
);
$builder->create_build_script;
