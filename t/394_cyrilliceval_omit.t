# This file is encoded in Char::Cyrillic.
die "This file is not encoded in Char::Cyrillic.\n" if q{ } ne "\x82\xa0";

use Char::Cyrillic;

print "1..12\n";

# Char::Cyrillic::eval (omit) has Char::Cyrillic::eval "..."
$_ = <<'END';
Char::Cyrillic::eval " if ('้ม' =~ /[แ]/i) { return 1 } else { return 0 } "
END
if (Char::Cyrillic::eval) {
    print qq{ok - 1 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 1 $^X @{[__FILE__]}\n};
}

# Char::Cyrillic::eval (omit) has Char::Cyrillic::eval qq{...}
$_ = <<'END';
Char::Cyrillic::eval qq{ if ('้ม' =~ /[แ]/i) { return 1 } else { return 0 } }
END
if (Char::Cyrillic::eval) {
    print qq{ok - 2 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 2 $^X @{[__FILE__]}\n};
}

# Char::Cyrillic::eval (omit) has Char::Cyrillic::eval '...'
$_ = <<'END';
Char::Cyrillic::eval ' if (qq{้ม} =~ /[แ]/i) { return 1 } else { return 0 } '
END
if (Char::Cyrillic::eval) {
    print qq{ok - 3 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 3 $^X @{[__FILE__]}\n};
}

# Char::Cyrillic::eval (omit) has Char::Cyrillic::eval q{...}
$_ = <<'END';
Char::Cyrillic::eval q{ if ('้ม' =~ /[แ]/i) { return 1 } else { return 0 } }
END
if (Char::Cyrillic::eval) {
    print qq{ok - 4 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 4 $^X @{[__FILE__]}\n};
}

# Char::Cyrillic::eval (omit) has Char::Cyrillic::eval $var
$_ = <<'END';
Char::Cyrillic::eval $var2
END
my $var2 = q{ if ('้ม' =~ /[แ]/i) { return 1 } else { return 0 } };
if (Char::Cyrillic::eval) {
    print qq{ok - 5 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 5 $^X @{[__FILE__]}\n};
}

# Char::Cyrillic::eval (omit) has Char::Cyrillic::eval (omit)
$_ = <<'END';
$_ = "if ('้ม' =~ /[แ]/i) { return 1 } else { return 0 }";
Char::Cyrillic::eval
END
if (Char::Cyrillic::eval) {
    print qq{ok - 6 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 6 $^X @{[__FILE__]}\n};
}

# Char::Cyrillic::eval (omit) has Char::Cyrillic::eval {...}
$_ = <<'END';
Char::Cyrillic::eval { if ('้ม' =~ /[แ]/i) { return 1 } else { return 0 } }
END
if (Char::Cyrillic::eval) {
    print qq{ok - 7 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 7 $^X @{[__FILE__]}\n};
}

# Char::Cyrillic::eval (omit) has "..."
$_ = <<'END';
if ('้ม' =~ /[แ]/i) { return "1" } else { return "0" }
END
if (Char::Cyrillic::eval) {
    print qq{ok - 8 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 8 $^X @{[__FILE__]}\n};
}

# Char::Cyrillic::eval (omit) has qq{...}
$_ = <<'END';
if ('้ม' =~ /[แ]/i) { return qq{1} } else { return qq{0} }
END
if (Char::Cyrillic::eval) {
    print qq{ok - 9 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 9 $^X @{[__FILE__]}\n};
}

# Char::Cyrillic::eval (omit) has '...'
$_ = <<'END';
if ('้ม' =~ /[แ]/i) { return '1' } else { return '0' }
END
if (Char::Cyrillic::eval) {
    print qq{ok - 10 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 10 $^X @{[__FILE__]}\n};
}

# Char::Cyrillic::eval (omit) has q{...}
$_ = <<'END';
if ('้ม' =~ /[แ]/i) { return q{1} } else { return q{0} }
END
if (Char::Cyrillic::eval) {
    print qq{ok - 11 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 11 $^X @{[__FILE__]}\n};
}

# Char::Cyrillic::eval (omit) has $var
$_ = <<'END';
if ('้ม' =~ /[แ]/i) { return $var1 } else { return $var0 }
END
my $var1 = 1;
my $var0 = 0;
if (Char::Cyrillic::eval) {
    print qq{ok - 12 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 12 $^X @{[__FILE__]}\n};
}

__END__
