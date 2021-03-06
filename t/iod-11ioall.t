=head1 PURPOSE

Check how IO::Detect handles L<IO::All> objects.

This test is skipped if IO::All is not available.

This file originally formed part of the IO-Detect test suite.

=head1 AUTHOR

Toby Inkster E<lt>tobyink@cpan.orgE<gt>.

=head1 COPYRIGHT AND LICENCE

This software is copyright (c) 2012-2013 by Toby Inkster.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

use strict;
use warnings;
use Test::More;
use Test::Requires "v5.10", "IO::All";

use IO::All ();
use IO::Detect;

$_ = IO::All->new('Makefile.PL');

ok is_filehandle, "is_filehandle";
ok is_filename, "is_filename";
ok not(is_fileuri), "is_fileuri";

done_testing;