use strict;
use warnings;

sub main
{
  my $directory = '/home/jamie/Documents/PerlIP/Assignment 2/Dummy/sub1';
  opendir( my $DIR, $directory );
  my @folders;
  push @folders, $directory;
  closedir($DIR);
    while ( my $pwd = shift @folders ) {
      print $pwd."\n";

    opendir(DIR, $pwd);

    while ( my $entry = readdir DIR ) {
    if($entry =~ m/\.jpg$/){
      print($entry."\n");
    }
    next unless -d $directory . '/' . $entry;
    next if $entry eq '.' or $entry eq '..';
    print $entry."\n";
    push @folders,$directory."/".$entry;

}

}


}
main();
