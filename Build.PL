use strict;
use Module::Build;

my $build = Module::Build
  ->new( module_name => "LWPx::TimedHTTP",
         license     => 'perl',
         requires    => {
                          'Test::More'      => 0,
                          'LWP::UserAgent'  => 0,
                          'Time::HiRes'     => 0,
                          'HTTP::Daemon'    => 0,
                          'HTTP::Status'    => 0,
                        },
         create_makefile_pl => 'passthrough',
       );

$build->create_build_script;

