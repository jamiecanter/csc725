use strict;
use warnings;

sub main
{
  my $directory = '/home/jamie/Documents/PerlIP/Assignment 2/Dummy/sub1';
  opendir( my $DIR, $directory );
    
    
    opendir(DIR, $directory);
    my @folders;

    while ( my $entry = readdir DIR ) {
    if($entry =~ m/\.txt$/){
      print($entry."\n");
    }
    next unless -d $directory . '/' . $entry;
    next if $entry eq '.' or $entry eq '..';
    print($directory."/".$entry);
    print("\n");
 
}


}
main();
