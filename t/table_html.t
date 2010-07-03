#!perl

use strict;
use warnings;
use Test::More tests => 10;

my @exampleScripts = (
  "example_1.cgi",
  "example_2.cgi",
  "example_3.cgi",
  "example_4.cgi",
  "example_5.cgi",
    );
  
# view mode

foreach my $exampleScript (@exampleScripts) {
  like(`perl example/$exampleScript -c view`, qr/\<\/table\>/, "$exampleScript view-mode table html produced");
}

# edit mode

foreach my $exampleScript (@exampleScripts) {
  like(`perl example/$exampleScript -c edit`, qr/\<\/table\>/, "$exampleScript edit-mode table html produced");
}
