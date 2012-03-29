package Data::Format::Pretty::Perl;

use 5.010;
use strict;
use warnings;

use Data::Dump qw(dump);

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(format_pretty);

# VERSION

sub content_type { "text/x-perl" }

sub format_pretty {
    my ($data, $opts) = @_;
    $opts //= {};

    dump($data);
}

1;
# ABSTRACT: Pretty-print data structure as Perl code
__END__

=head1 SYNOPSIS

 use Data::Format::Pretty::Perl qw(format_pretty);
 print format_pretty($data);

Some example output:

=over 4

=item * format_pretty({a=>1, b=>2})

 { a => 1, b => 2 }


=head1 DESCRIPTION

This module uses L<Data::Dump> to format data as Perl code.


=head1 FUNCTIONS

=head2 format_pretty($data, \%opts)

Return formatted data structure as Perl code. Currently there are no known
options.


=head1 SEE ALSO

L<Data::Format::Pretty>

=cut

