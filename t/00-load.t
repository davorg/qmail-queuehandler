use Test::More;

BEGIN { use_ok 'QMail::QueueHandler' };

# Running new() randomly like this will splurge the help text to
# STDOUT. Let's stop that from appearing in the test output.
close STDOUT;
open STDOUT, '>', \(my $output);

my $qh;
eval { ok($qh = QMail::QueueHandler->new, 'Got something') };

isa_ok($qh, 'QMail::QueueHandler');

ok($output, 'Got some help text');

done_testing();
