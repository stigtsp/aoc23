#!/usr/bin/env perl

use v5.38;
use List::Util qw(sum);

say sum map {
  join "",
    /(\d)/,
    /(\d)\D*$/
  } <STDIN>;
