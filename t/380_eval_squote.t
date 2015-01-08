# This file is encoded in Char::Cyrillic.
die "This file is not encoded in Char::Cyrillic.\n" if q{��} ne "\x82\xa0";

use Char::Cyrillic;

print "1..12\n";

# eval '...' has eval "..."
if (eval Char::Cyrillic::escape ' eval Char::Cyrillic::escape " if (\'��\' =~ /[��]/i) { return 1 } else { return 0 } " ') {
    print qq{ok - 1 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 1 $^X @{[__FILE__]}\n};
}

# eval '...' has eval qq{...}
if (eval Char::Cyrillic::escape ' eval Char::Cyrillic::escape qq{ if (\'��\' =~ /[��]/i) { return 1 } else { return 0 } } ') {
    print qq{ok - 2 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 2 $^X @{[__FILE__]}\n};
}

# eval '...' has eval '...'
if (eval Char::Cyrillic::escape ' eval Char::Cyrillic::escape \' if (qq{��} =~ /[��]/i) { return 1 } else { return 0 } \' ') {
    print qq{ok - 3 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 3 $^X @{[__FILE__]}\n};
}

# eval '...' has eval q{...}
if (eval Char::Cyrillic::escape ' eval Char::Cyrillic::escape q{ if (\'��\' =~ /[��]/i) { return 1 } else { return 0 } } ') {
    print qq{ok - 4 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 4 $^X @{[__FILE__]}\n};
}

# eval '...' has eval $var
my $var = q{ if ('��' =~ /[��]/i) { return 1 } else { return 0 } };
if (eval Char::Cyrillic::escape ' eval Char::Cyrillic::escape $var ') {
    print qq{ok - 5 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 5 $^X @{[__FILE__]}\n};
}

# eval '...' has eval (omit)
$_ = "if ('��' =~ /[��]/i) { return 1 } else { return 0 }";
if (eval Char::Cyrillic::escape ' eval Char::Cyrillic::escape ') {
    print qq{ok - 6 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 6 $^X @{[__FILE__]}\n};
}

# eval '...' has eval {...}
if (eval Char::Cyrillic::escape ' eval { if (\'��\' =~ /[��]/i) { return 1 } else { return 0 } } ') {
    print qq{ok - 7 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 7 $^X @{[__FILE__]}\n};
}

# eval '...' has "..."
if (eval Char::Cyrillic::escape ' if (\'��\' =~ /[��]/i) { return "1" } else { return "0" } ') {
    print qq{ok - 8 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 8 $^X @{[__FILE__]}\n};
}

# eval '...' has qq{...}
if (eval Char::Cyrillic::escape ' if (\'��\' =~ /[��]/i) { return qq{1} } else { return qq{0} } ') {
    print qq{ok - 9 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 9 $^X @{[__FILE__]}\n};
}

# eval '...' has '...'
if (eval Char::Cyrillic::escape ' if (\'��\' =~ /[��]/i) { return \'1\' } else { return \'0\' } ') {
    print qq{ok - 10 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 10 $^X @{[__FILE__]}\n};
}

# eval '...' has q{...}
if (eval Char::Cyrillic::escape ' if (\'��\' =~ /[��]/i) { return q{1} } else { return q{0} } ') {
    print qq{ok - 11 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 11 $^X @{[__FILE__]}\n};
}

# eval '...' has $var
my $var1 = 1;
my $var0 = 0;
if (eval Char::Cyrillic::escape ' if (\'��\' =~ /[��]/i) { return $var1 } else { return $var0 } ') {
    print qq{ok - 12 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 12 $^X @{[__FILE__]}\n};
}

__END__
