# This file is encoded in Char::Cyrillic.
die "This file is not encoded in Char::Cyrillic.\n" if q{��} ne "\x82\xa0";

use Char::Cyrillic;

print "1..12\n";

my $var = '';

# Char::Cyrillic::eval $var has Char::Cyrillic::eval "..."
$var = <<'END';
Char::Cyrillic::eval " if ('��' =~ /[��]/i) { return 1 } else { return 0 } "
END
if (Char::Cyrillic::eval $var) {
    print qq{ok - 1 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 1 $^X @{[__FILE__]}\n};
}

# Char::Cyrillic::eval $var has Char::Cyrillic::eval qq{...}
$var = <<'END';
Char::Cyrillic::eval qq{ if ('��' =~ /[��]/i) { return 1 } else { return 0 } }
END
if (Char::Cyrillic::eval $var) {
    print qq{ok - 2 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 2 $^X @{[__FILE__]}\n};
}

# Char::Cyrillic::eval $var has Char::Cyrillic::eval '...'
$var = <<'END';
Char::Cyrillic::eval ' if (qq{��} =~ /[��]/i) { return 1 } else { return 0 } '
END
if (Char::Cyrillic::eval $var) {
    print qq{ok - 3 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 3 $^X @{[__FILE__]}\n};
}

# Char::Cyrillic::eval $var has Char::Cyrillic::eval q{...}
$var = <<'END';
Char::Cyrillic::eval q{ if ('��' =~ /[��]/i) { return 1 } else { return 0 } }
END
if (Char::Cyrillic::eval $var) {
    print qq{ok - 4 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 4 $^X @{[__FILE__]}\n};
}

# Char::Cyrillic::eval $var has Char::Cyrillic::eval $var
$var = <<'END';
Char::Cyrillic::eval $var2
END
my $var2 = q{ if ('��' =~ /[��]/i) { return 1 } else { return 0 } };
if (Char::Cyrillic::eval $var) {
    print qq{ok - 5 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 5 $^X @{[__FILE__]}\n};
}

# Char::Cyrillic::eval $var has Char::Cyrillic::eval (omit)
$var = <<'END';
Char::Cyrillic::eval
END
$_ = "if ('��' =~ /[��]/i) { return 1 } else { return 0 }";
if (Char::Cyrillic::eval $var) {
    print qq{ok - 6 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 6 $^X @{[__FILE__]}\n};
}

# Char::Cyrillic::eval $var has Char::Cyrillic::eval {...}
$var = <<'END';
Char::Cyrillic::eval { if ('��' =~ /[��]/i) { return 1 } else { return 0 } }
END
if (Char::Cyrillic::eval $var) {
    print qq{ok - 7 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 7 $^X @{[__FILE__]}\n};
}

# Char::Cyrillic::eval $var has "..."
$var = <<'END';
if ('��' =~ /[��]/i) { return "1" } else { return "0" }
END
if (Char::Cyrillic::eval $var) {
    print qq{ok - 8 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 8 $^X @{[__FILE__]}\n};
}

# Char::Cyrillic::eval $var has qq{...}
$var = <<'END';
if ('��' =~ /[��]/i) { return qq{1} } else { return qq{0} }
END
if (Char::Cyrillic::eval $var) {
    print qq{ok - 9 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 9 $^X @{[__FILE__]}\n};
}

# Char::Cyrillic::eval $var has '...'
$var = <<'END';
if ('��' =~ /[��]/i) { return '1' } else { return '0' }
END
if (Char::Cyrillic::eval $var) {
    print qq{ok - 10 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 10 $^X @{[__FILE__]}\n};
}

# Char::Cyrillic::eval $var has q{...}
$var = <<'END';
if ('��' =~ /[��]/i) { return q{1} } else { return q{0} }
END
if (Char::Cyrillic::eval $var) {
    print qq{ok - 11 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 11 $^X @{[__FILE__]}\n};
}

# Char::Cyrillic::eval $var has $var
$var = <<'END';
if ('��' =~ /[��]/i) { return $var1 } else { return $var0 }
END
my $var1 = 1;
my $var0 = 0;
if (Char::Cyrillic::eval $var) {
    print qq{ok - 12 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 12 $^X @{[__FILE__]}\n};
}

__END__
