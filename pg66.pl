use strict;
use warnings;

sub main
{
  calculate();
}

sub calculate{
  my @inputs;
  my $line;

  while($line =<STDIN>){
    push @inputs, $line;
  }
  my %hashy=@inputs;
  my @inputs2;
  my $add;
while($add=<STDIN>){
  push @inputs2, $add;
}

  my $n = scalar @inputs;
  my $total;
  my $big =0;

  for(my $i =0; $i<$n;$i++){
    $total = $hashy{$inputs2[$i]}+$hashy{$inputs2[$i+1]};
    $i++;
    if($total > $big){
      $big=$total
    }
  }
  print "Max pair: ", $big,"\n";
  my $small = $big;
  for(my $i =0; $i<$n;$i++){
    $total = $hashy{$inputs2[$i]}+$hashy{$inputs2[$i+1]};
    $i++;
    if($total < $small){
      $small=$total
    }
  }
  print "Min pair: ", $big,"\n";
  my $big = $small;
  for(my $i =0; $i<$n;$i++){
    $total = $hashy{$inputs2[$i]}+$hashy{$inputs2[$i+1]};
    $i++;
    if($total < $small){
      $big=$total
    }
  }



}


main();
