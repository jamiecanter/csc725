use strict;
use warnings;

sub main
{
  a();
  print("----------------\n");
  b();
  print("----------------\n");
  c();
  print("----------------\n");
  d();
  print("----------------\n");
}
sub a{
  my $x;
  my $y;
  for($x=0; $x<8;$x++){
    for($y=0;$y<$x;$y++){
      print("*");
      }
    print("\n")
  }
}

sub d{

  for(my $i=0;$i<8;$i++){
      for(my $j=0;$j<$i;$j++){
        print(" ");
      }
      for(my $j=0;$j<(8-$i);$j++){
              print("*");
      }
        print("\n");
    }
}


sub b{

  for(my $i=1;$i<=7;$i++){
      for(my $j=7;$j>=1;$j--){
        if($j>$i){
          print(" ");
        }
        else{
          print("*");
        }

    }
    print("\n");
  }
}





sub c{
  my $x;
  my $y;
  for($x=0;$x<8;$x++){
      for(my $k=0;$k<(7-$x);$k++){
        print("*");
      }
        print("\n");
    }
}





main();
