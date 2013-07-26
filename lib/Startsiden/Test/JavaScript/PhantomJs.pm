package Startsiden::Test::JavaScript::PhantomJs;
use Moose;
extends 'Startsiden::Test::JavaScript::Base';

sub _generate_command {
    my ($self, $test, $test_script, @args) = @_;
    my $cmd = 'phantomjs';
    # XXX: Should send in location for qunit etc probably
    my $inc = join(":", ($ENV{JSINC} ? $ENV{JSINC} : () ),
        '/usr/local/share/startsiden-javascript-qunit'
    );
    $cmd = join(" ", $cmd, $test, $test_script, @args, "INC:$inc");
    return $cmd;
}

1;
