######################################################################
# Test suite for SVN::Utils::ClientIP
# by Mike Schilli <cpan@perlmeister.com>
######################################################################

use warnings;
use strict;

use Test::More qw(no_plan);
BEGIN { use_ok('SVN::Utils::ClientIP') };

ok(1);
like("123", qr/^\d+$/);
