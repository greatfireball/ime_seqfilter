#!/usr/bin/env perl

use strict;
use warnings;

my @nucl=qw(A C G T);

srand(20190211);

for(my $i=1; $i<=10; $i++)
{
    my $seq_length = rand(25000);
    my $name = sprintf(">seq%05d len:%d", $i, $seq_length);

    my $seq = "";

    while (length($seq)<$seq_length)
    {
	$seq .= $nucl[rand(@nucl)] 
    }

    print $name,"\n",$seq,"\n";
}
