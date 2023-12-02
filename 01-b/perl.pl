#!/usr/bin/env perl

use v5.38;
use List::Util qw(sum);

my %conv = qw( one   1
               two   2
               three 3
               four  4
               five  5
               six   6
               seven 7
               eight 8
               nine  9 );

my $re = join "|", keys %conv;

say sum map {
  join "",
    map { $conv{$_} || $_ } /(\d|$re)/, /.*(\d|$re)/;
} <STDIN>;
