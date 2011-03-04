# This file is encoded in Char::Cyrillic.
die "This file is not encoded in Char::Cyrillic.\n" if q{あ} ne "\x82\xa0";

use Char::Cyrillic;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あ-い' =~ /(あ\Sい)/) {
    if ("-" eq "-") {
        print "ok - 1 $^X $__FILE__ ('あ-い' =~ /あ\\Sい/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('あ-い' =~ /あ\\Sい/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('あ-い' =~ /あ\\Sい/).\n";
}

__END__
