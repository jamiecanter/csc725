use strict;
use warnings;

sub main
{
  for(my $i =1; $i<=8;$i++){
    for(my $j=0; $j<(8-$i);$j++){
      print(" ");
    }
    for(my $j=1; $j<=$i;$j++){
      print("*");
    }

    for(my $k=1;$k<$i;$k++){
      print("*");
    }
    print("\n");
  }

  for(my $i =8-1; $i>=1;$i--){
    for(my $j=0; $j<(8-$i);$j++){
      print(" ");
    }
    for(my $j=1; $j<=$i;$j++){
      print("*");
    }
    for(my $k=1;$k<$i;$k++){
    print("*");
    }
    print("\n");
  }

}
main();
