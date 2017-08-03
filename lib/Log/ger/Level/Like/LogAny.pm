package Log::ger::Level::Like::LogAny;

# DATE
# VERSION

use Log::ger ();

%Log::ger::Levels = (
    emergency => 0.1,
    alert     => 0.2,
    critical  => 1,
    crit      => 1, # = critical
    fatal     => 1, # = critical
    error     => 2,
    err       => 2, # = error
    warning   => 3,
    warn      => 3, # = warning
    notice    => 3.5,
    info      => 4,
    inform    => 4, # = info
    debug     => 5,
    trace     => 6,
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

    emergency => 0.1,
    alert     => 0.2,
    critical  => 1,
    crit      => 1, # = critical
    fatal     => 1, # = critical
    error     => 2,
    err       => 2, # = error
    warning   => 3,
    warn      => 3, # = warning
    notice    => 3.5,
    info      => 4,
    inform    => 4, # = info
    debug     => 5,
    trace     => 6,

Note that the exact numerical constants differ from definitions in
L<Log::Any::Adapter::Util>. The numbers are adjusted so things like
L<Log::ger::Output::Screen> can show colors that are more equivalent.

The aliases names are defined as proper levels too so you get C<log_crit>,
C<log_err>, and so on.


=head1 SEE ALSO

L<Log::Any>
