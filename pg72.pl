use strict;
use warnings;

sub main
{
  my $directory = '/home/jamie/Documents/PerlIP/Assignment 2/Dummy';

  opendir(DIR,$directory);
  my $oldname;
  my @files = readdir(DIR);
  closedir(DIR);
  my $i=1;
  foreach(@files){
    $oldname=$_;
    my $newname = $i.".fil";
    rename("$directory/$oldname", "$directory/$newname");
    $i++;
  }
}
main();
