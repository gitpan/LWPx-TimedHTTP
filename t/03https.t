#!perl
use strict;
use Test::More tests => 1;
use LWP::UserAgent;
use LWPx::TimedHTTP qw(:autoinstall);

my $ua = LWP::UserAgent->new;
my $r = $ua->get("https://unixbeard.net/");
#diag( $r->code." ".$r->message." ".$r->header('Client-Request-Connect-Time') );
$TODO = "you might not be online";
ok( $r->header('Client-Request-Connect-Time'), 
    "unixbeard.net isn't faster than a speeding bullet" );
