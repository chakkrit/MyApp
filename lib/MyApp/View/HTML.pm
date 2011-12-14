package MyApp::View::HTML;

use strict;
use warnings;

use base 'Catalyst::View::TT';

__PACKAGE__->config(
    #Change default TT extension
    TEMPLATE_EXTENSION => '.tt2',
    INCLUDE_PATH => [ MyApp->path_to( 'root', 'src' ), ],
    TIMER => 0,
    WRAPPER => 'wrapper.tt2',
);

=head1 NAME

MyApp::View::HTML - TT View for MyApp

=head1 DESCRIPTION

TT View for MyApp.

=head1 SEE ALSO

L<MyApp>

=head1 AUTHOR

chakkrit,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
