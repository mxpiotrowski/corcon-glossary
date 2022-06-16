#! /opt/perl5/bin/perl -w

use v5.10;

while (<>)
{
   s/^id: (\d{12})$/id: ${1}00/g;
   s/\b(\d{12})\]\]/${1}00]]/g;
   print;
}
