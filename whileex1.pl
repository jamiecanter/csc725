use strict;
use warnings;

sub main
{
  calculate();
}

sub calculate{
  my @inputs;
  my %hashy;
  my $line;

  while($line =<STDIN>){
    my $name = <STDIN>;
    my $age = <STDIN>;
    $hashy{$name} = $age;
  }

  my @answers;
  foreach my $j (0..1)  {
  my $pair1 = <STDIN>;
  my $pair2 = <STDIN>;

  $answers[$j]=$hashy{$pair1}+$hashy{$pair2};
  }

  if( $answers[0] > $answers[1] ){
    print $answers[0];
  }
  else{
    print $answers[1] ;
  }

}


main();
