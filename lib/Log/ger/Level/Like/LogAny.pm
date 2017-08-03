package Log::ger::Level::Like::LogAny;

# DATE
# VERSION

use Log::ger ();

%Log::ger::Levels = (
    emergency => 5,
    alert     => 6,
    critical  => 10,
    crit      => 10, # = critical
    fatal     => 10, # = critical
    error     => 20,
    err       => 20, # = error
    warning   => 30,
    warn      => 30, # = warning
    notice    => 35,
    info      => 40,
    inform    => 40, # = info
    debug     => 50,
    trace     => 60,
);

%Log::ger::Level_Aliases = (
    off => 0,
);

1;
# ABSTRACT: Define logging levels like Log::Any

=head1 SYNOPSIS

 # load before 'use Log::ger' in any package/target
 use Log::ger::Level::Like::LogAny;


=head1 DESCRIPTION

This module changes the L<Log::ger> levels to:

    emergency => 5,
    alert     => 6,
    critical  => 10,
    crit      => 10, # = critical
    fatal     => 10, # = critical
    error     => 20,
    err       => 20, # = error
    warning   => 30,
    warn      => 30, # = warning
    notice    => 35,
    info      => 40,
    inform    => 40, # = info
    debug     => 50,
    trace     => 60,

Note that the exact numerical constants differ from definitions in
L<Log::Any::Adapter::Util>. The numbers are adjusted so things like
L<Log::ger::Output::Screen> can show colors that are more equivalent.

The aliases names are defined as proper levels too so you get C<log_crit>,
C<log_err>, and so on.


=head1 SEE ALSO

L<Log::Any>
