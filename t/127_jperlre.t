# This file is encoded in Char::Cyrillic.
die "This file is not encoded in Char::Cyrillic.\n" if q{あ} ne "\x82\xa0";

use Char::Cyrillic;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あいいいいう' =~ /(あい?いう)/) {
    print "not ok - 1 $^X $__FILE__ not ('あいいいいう' =~ /あい?いう/).\n";
}
else {
    print "ok - 1 $^X $__FILE__ not ('あいいいいう' =~ /あい?いう/).\n";
}

__END__
