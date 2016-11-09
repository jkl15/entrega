#!/usr/bin/perl
use List::Util qw( max );
open(BED, "<example.bed");

while($line=<BED>){
  @var=split(/\t/,$line);
  @col=split(/,/ , $var[10]);
  @col2= $var[3];
  $exon= max @col;
  push(@lista, $exon);
  print "@col2\n";
}


@sort = sort {$b <=> $a} @lista;
#print "@sort\t";
#print "@sort\n";
for ($i=0;$i<10;$i++){
 print "@sort[$i]\n";
}

