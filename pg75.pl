use strict;
use warnings;

sub main
{
  my $directory = '/home/jamie/Documents/PerlIP/Assignment 2/Dummy/sub1';

  opendir(DIR, $directory) or die $!;
  my $file;
  while ($file = readdir(DIR)) {
      next(-d "$directory/$file");

      print "$file\n";

      # We only want files
      next unless (-f "$directory/$file");

      # Use a regular expression to find files ending in .txt
      next unless ($file =~ m/\.jpg$/);

      print "$file\n";

}
}
main();
