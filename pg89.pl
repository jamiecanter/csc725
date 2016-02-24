use strict;
use warnings;

sub main
{
#Store Values
my @numbers;
for(my $i=0;$i<1000;$i++){
  $numbers[$i]=1;
}
my $n = scalar @numbers;

for(my $i=2;$i<$n;$i++){
  if($numbers[$i]==1){
    for(my $j=$i;$j<$n;$j+=$i){
      $numbers[$j+$i]=0;
    }
  }
}

#Print Out Array
for(my $i=0;$i<$n;$i++){
  if($numbers[$i]==1){
    print $i."\n";
  }
}

}

main();
