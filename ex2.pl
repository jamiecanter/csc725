use strict;
use warnings;

sub main
{
  calculate();
}

sub calculate{
  my @inputs;
  foreach my $i (0..3)  {
  $inputs[$i] = <STDIN>;
  }
  my $sum1=0;
  my $sum2=0;
  
  $sum1=$inputs[0]+$inputs[1];
  $sum2=$inputs[2]+$inputs[3];

  if( $sum1 > $sum2 ){
    print $sum1;
  }
  else{
    print $sum2;
  }

}


main();
