# This file is encoded in Char::Cyrillic.
die "This file is not encoded in Char::Cyrillic.\n" if q{‚ } ne "\x82\xa0";

use Char::Cyrillic;
print "1..30\n";

if (fc('ABCDEF') eq fc('abcdef')) {
    print qq{ok - 1 fc('ABCDEF') eq fc('abcdef')\n};
}
else {
    print qq{not ok - 1 fc('ABCDEF') eq fc('abcdef')\n};
}

if ("\FABCDEF\E" eq "\Fabcdef\E") {
    print qq{ok - 2 "\\FABCDEF\\E" eq "\\Fabcdef\\E"\n};
}
else {
    print qq{not ok - 2 "\\FABCDEF\\E" eq "\\Fabcdef\\E"\n};
}

if ("\FABCDEF\E" =~ /\Fabcdef\E/) {
    print qq{ok - 3 "\\FABCDEF\\E" =~ /\\Fabcdef\\E/\n};
}
else {
    print qq{not ok - 3 "\\FABCDEF\\E" =~ /\\Fabcdef\\E/\n};
}

if ("\Fabcdef\E" =~ /\FABCDEF\E/) {
    print qq{ok - 4 "\\Fabcdef\\E" =~ /\\FABCDEF\\E/\n};
}
else {
    print qq{not ok - 4 "\\Fabcdef\\E" =~ /\\FABCDEF\\E/\n};
}

if ("\FABCDEF\E" =~ /\Fabcdef\E/i) {
    print qq{ok - 5 "\\FABCDEF\\E" =~ /\\Fabcdef\\E/i\n};
}
else {
    print qq{not ok - 5 "\\FABCDEF\\E" =~ /\\Fabcdef\\E/i\n};
}

if ("\Fabcdef\E" =~ /\FABCDEF\E/i) {
    print qq{ok - 6 "\\Fabcdef\\E" =~ /\\FABCDEF\\E/i\n};
}
else {
    print qq{not ok - 6 "\\Fabcdef\\E" =~ /\\FABCDEF\\E/i\n};
}

my $var = 'abcdef';
if ("\FABCDEF\E" =~ /\F$var\E/i) {
    print qq{ok - 7 "\\FABCDEF\\E" =~ /\\F\$var\\E/i\n};
}
else {
    print qq{not ok - 7 "\\FABCDEF\\E" =~ /\\F\$var\\E/i\n};
}

$var = 'ABCDEF';
if ("\Fabcdef\E" =~ /\F$var\E/i) {
    print qq{ok - 8 "\\Fabcdef\\E" =~ /\\F\$var\\E/i\n};
}
else {
    print qq{not ok - 8 "\\Fabcdef\\E" =~ /\\F\$var\\E/i\n};
}

my %fc = ();
@fc{qw(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)} =
    qw(a b c d e f g h i j k l m n o p q r s t u v w x y z);
%fc = (%fc,
    "\xA1" => "\xF1",     # Char::CYRILLIC CAPITAL LETTER IO --> Char::CYRILLIC SMALL LETTER IO
    "\xA2" => "\xF2",     # Char::CYRILLIC CAPITAL LETTER DJE --> Char::CYRILLIC SMALL LETTER DJE
    "\xA3" => "\xF3",     # Char::CYRILLIC CAPITAL LETTER GJE --> Char::CYRILLIC SMALL LETTER GJE
    "\xA4" => "\xF4",     # Char::CYRILLIC CAPITAL LETTER UKRAINIAN IE --> Char::CYRILLIC SMALL LETTER UKRAINIAN IE
    "\xA5" => "\xF5",     # Char::CYRILLIC CAPITAL LETTER DZE --> Char::CYRILLIC SMALL LETTER DZE
    "\xA6" => "\xF6",     # Char::CYRILLIC CAPITAL LETTER BYELORUSSIAN-UKRAINIAN I --> Char::CYRILLIC SMALL LETTER BYELORUSSIAN-UKRAINIAN I
    "\xA7" => "\xF7",     # Char::CYRILLIC CAPITAL LETTER YI --> Char::CYRILLIC SMALL LETTER YI
    "\xA8" => "\xF8",     # Char::CYRILLIC CAPITAL LETTER JE --> Char::CYRILLIC SMALL LETTER JE
    "\xA9" => "\xF9",     # Char::CYRILLIC CAPITAL LETTER LJE --> Char::CYRILLIC SMALL LETTER LJE
    "\xAA" => "\xFA",     # Char::CYRILLIC CAPITAL LETTER NJE --> Char::CYRILLIC SMALL LETTER NJE
    "\xAB" => "\xFB",     # Char::CYRILLIC CAPITAL LETTER TSHE --> Char::CYRILLIC SMALL LETTER TSHE
    "\xAC" => "\xFC",     # Char::CYRILLIC CAPITAL LETTER KJE --> Char::CYRILLIC SMALL LETTER KJE
    "\xAE" => "\xFE",     # Char::CYRILLIC CAPITAL LETTER SHORT U --> Char::CYRILLIC SMALL LETTER SHORT U
    "\xAF" => "\xFF",     # Char::CYRILLIC CAPITAL LETTER DZHE --> Char::CYRILLIC SMALL LETTER DZHE
    "\xB0" => "\xD0",     # Char::CYRILLIC CAPITAL LETTER A --> Char::CYRILLIC SMALL LETTER A
    "\xB1" => "\xD1",     # Char::CYRILLIC CAPITAL LETTER BE --> Char::CYRILLIC SMALL LETTER BE
    "\xB2" => "\xD2",     # Char::CYRILLIC CAPITAL LETTER VE --> Char::CYRILLIC SMALL LETTER VE
    "\xB3" => "\xD3",     # Char::CYRILLIC CAPITAL LETTER GHE --> Char::CYRILLIC SMALL LETTER GHE
    "\xB4" => "\xD4",     # Char::CYRILLIC CAPITAL LETTER DE --> Char::CYRILLIC SMALL LETTER DE
    "\xB5" => "\xD5",     # Char::CYRILLIC CAPITAL LETTER IE --> Char::CYRILLIC SMALL LETTER IE
    "\xB6" => "\xD6",     # Char::CYRILLIC CAPITAL LETTER ZHE --> Char::CYRILLIC SMALL LETTER ZHE
    "\xB7" => "\xD7",     # Char::CYRILLIC CAPITAL LETTER ZE --> Char::CYRILLIC SMALL LETTER ZE
    "\xB8" => "\xD8",     # Char::CYRILLIC CAPITAL LETTER I --> Char::CYRILLIC SMALL LETTER I
    "\xB9" => "\xD9",     # Char::CYRILLIC CAPITAL LETTER SHORT I --> Char::CYRILLIC SMALL LETTER SHORT I
    "\xBA" => "\xDA",     # Char::CYRILLIC CAPITAL LETTER KA --> Char::CYRILLIC SMALL LETTER KA
    "\xBB" => "\xDB",     # Char::CYRILLIC CAPITAL LETTER EL --> Char::CYRILLIC SMALL LETTER EL
    "\xBC" => "\xDC",     # Char::CYRILLIC CAPITAL LETTER EM --> Char::CYRILLIC SMALL LETTER EM
    "\xBD" => "\xDD",     # Char::CYRILLIC CAPITAL LETTER EN --> Char::CYRILLIC SMALL LETTER EN
    "\xBE" => "\xDE",     # Char::CYRILLIC CAPITAL LETTER O --> Char::CYRILLIC SMALL LETTER O
    "\xBF" => "\xDF",     # Char::CYRILLIC CAPITAL LETTER PE --> Char::CYRILLIC SMALL LETTER PE
    "\xC0" => "\xE0",     # Char::CYRILLIC CAPITAL LETTER ER --> Char::CYRILLIC SMALL LETTER ER
    "\xC1" => "\xE1",     # Char::CYRILLIC CAPITAL LETTER ES --> Char::CYRILLIC SMALL LETTER ES
    "\xC2" => "\xE2",     # Char::CYRILLIC CAPITAL LETTER TE --> Char::CYRILLIC SMALL LETTER TE
    "\xC3" => "\xE3",     # Char::CYRILLIC CAPITAL LETTER U --> Char::CYRILLIC SMALL LETTER U
    "\xC4" => "\xE4",     # Char::CYRILLIC CAPITAL LETTER EF --> Char::CYRILLIC SMALL LETTER EF
    "\xC5" => "\xE5",     # Char::CYRILLIC CAPITAL LETTER HA --> Char::CYRILLIC SMALL LETTER HA
    "\xC6" => "\xE6",     # Char::CYRILLIC CAPITAL LETTER TSE --> Char::CYRILLIC SMALL LETTER TSE
    "\xC7" => "\xE7",     # Char::CYRILLIC CAPITAL LETTER CHE --> Char::CYRILLIC SMALL LETTER CHE
    "\xC8" => "\xE8",     # Char::CYRILLIC CAPITAL LETTER SHA --> Char::CYRILLIC SMALL LETTER SHA
    "\xC9" => "\xE9",     # Char::CYRILLIC CAPITAL LETTER SHCHA --> Char::CYRILLIC SMALL LETTER SHCHA
    "\xCA" => "\xEA",     # Char::CYRILLIC CAPITAL LETTER HARD SIGN --> Char::CYRILLIC SMALL LETTER HARD SIGN
    "\xCB" => "\xEB",     # Char::CYRILLIC CAPITAL LETTER YERU --> Char::CYRILLIC SMALL LETTER YERU
    "\xCC" => "\xEC",     # Char::CYRILLIC CAPITAL LETTER SOFT SIGN --> Char::CYRILLIC SMALL LETTER SOFT SIGN
    "\xCD" => "\xED",     # Char::CYRILLIC CAPITAL LETTER E --> Char::CYRILLIC SMALL LETTER E
    "\xCE" => "\xEE",     # Char::CYRILLIC CAPITAL LETTER YU --> Char::CYRILLIC SMALL LETTER YU
    "\xCF" => "\xEF",     # Char::CYRILLIC CAPITAL LETTER YA --> Char::CYRILLIC SMALL LETTER YA
);
my $before_fc = join "\t",               sort keys %fc;
my $after_fc  = join "\t", map {$fc{$_}} sort keys %fc;

if (fc("$before_fc") eq "$after_fc") {
    print qq{ok - 9 fc("\$before_fc") eq "\$after_fc"\n};
}
else {
    print qq{not ok - 9 fc("\$before_fc") eq "\$after_fc"\n};
}

if (fc("$after_fc") eq "$after_fc") {
    print qq{ok - 10 fc("\$after_fc") eq "\$after_fc"\n};
}
else {
    print qq{not ok - 10 fc("\$after_fc") eq "\$after_fc"\n};
}

if (fc("$before_fc") eq fc("$after_fc")) {
    print qq{ok - 11 fc("\$before_fc") eq fc("\$after_fc")\n};
}
else {
    print qq{not ok - 11 fc("\$before_fc") eq fc("\$after_fc")\n};
}

if ("\F$before_fc\E" eq "$after_fc") {
    print qq{ok - 12 "\\F\$before_fc\\E" eq "\$after_fc"\n};
}
else {
    print qq{not ok - 12 "\\F\$before_fc\\E" eq "\$after_fc"\n};
}

if ("\F$after_fc\E" eq "$after_fc") {
    print qq{ok - 13 "\\F\$after_fc\\E" eq "\$after_fc"\n};
}
else {
    print qq{not ok - 13 "\\F\$after_fc\\E" eq "\$after_fc"\n};
}

if ("\F$before_fc\E" eq "\F$after_fc\E") {
    print qq{ok - 14 "\\F\$before_fc\\E" eq "\\F\$after_fc\\E"\n};
}
else {
    print qq{not ok - 14 "\\F\$before_fc\\E" eq "\\F\$after_fc\\E"\n};
}

if ("$after_fc" =~ /\F$before_fc\E/) {
    print qq{ok - 15 "\$after_fc" =~ /\\F\$before_fc\\E/\n};
}
else {
    print qq{not ok - 15 "\$after_fc" =~ /\\F\$before_fc\\E/\n};
}

if ("$after_fc" =~ /\F$after_fc\E/) {
    print qq{ok - 16 "\$after_fc" =~ /\\F\$after_fc\\E/\n};
}
else {
    print qq{not ok - 16 "\$after_fc" =~ /\\F\$after_fc\\E/\n};
}

if ("\F$before_fc\E" =~ /$after_fc/) {
    print qq{ok - 17 "\\F\$before_fc\\E" =~ /\$after_fc/\n};
}
else {
    print qq{not ok - 17 "\\F\$before_fc\\E" =~ /\$after_fc/\n};
}

if ("\F$before_fc\E" =~ /\F$before_fc\E/) {
    print qq{ok - 18 "\\F\$before_fc\\E" =~ /\\F\$before_fc\\E/\n};
}
else {
    print qq{not ok - 18 "\\F\$before_fc\\E" =~ /\\F\$before_fc\\E/\n};
}

if ("\F$before_fc\E" =~ /\F$after_fc\E/) {
    print qq{ok - 19 "\\F\$before_fc\\E" =~ /\\F\$after_fc\\E/\n};
}
else {
    print qq{not ok - 19 "\\F\$before_fc\\E" =~ /\\F\$after_fc\\E/\n};
}

if ("\F$after_fc\E" =~ /$after_fc/) {
    print qq{ok - 20 "\\F\$after_fc\\E" =~ /\$after_fc/\n};
}
else {
    print qq{not ok - 20 "\\F\$after_fc\\E" =~ /\$after_fc/\n};
}

if ("\F$after_fc\E" =~ /\F$before_fc\E/) {
    print qq{ok - 21 "\\F\$after_fc\\E" =~ /\\F\$before_fc\\E/\n};
}
else {
    print qq{not ok - 21 "\\F\$after_fc\\E" =~ /\\F\$before_fc\\E/\n};
}

if ("\F$after_fc\E" =~ /\F$after_fc\E/) {
    print qq{ok - 22 "\\F\$after_fc\\E" =~ /\\F\$after_fc\\E/\n};
}
else {
    print qq{not ok - 22 "\\F\$after_fc\\E" =~ /\\F\$after_fc\\E/\n};
}

if ("$after_fc" =~ /\F$before_fc\E/i) {
    print qq{ok - 23 "\$after_fc" =~ /\\F\$before_fc\\E/i\n};
}
else {
    print qq{not ok - 23 "\$after_fc" =~ /\\F\$before_fc\\E/i\n};
}

if ("$after_fc" =~ /\F$after_fc\E/i) {
    print qq{ok - 24 "\$after_fc" =~ /\\F\$after_fc\\E/i\n};
}
else {
    print qq{not ok - 24 "\$after_fc" =~ /\\F\$after_fc\\E/i\n};
}

if ("\F$before_fc\E" =~ /$after_fc/i) {
    print qq{ok - 25 "\\F\$before_fc\\E" =~ /\$after_fc/i\n};
}
else {
    print qq{not ok - 25 "\\F\$before_fc\\E" =~ /\$after_fc/i\n};
}

if ("\F$before_fc\E" =~ /\F$before_fc\E/i) {
    print qq{ok - 26 "\\F\$before_fc\\E" =~ /\\F\$before_fc\\E/i\n};
}
else {
    print qq{not ok - 26 "\\F\$before_fc\\E" =~ /\\F\$before_fc\\E/i\n};
}

if ("\F$before_fc\E" =~ /\F$after_fc\E/i) {
    print qq{ok - 27 "\\F\$before_fc\\E" =~ /\\F\$after_fc\\E/i\n};
}
else {
    print qq{not ok - 27 "\\F\$before_fc\\E" =~ /\\F\$after_fc\\E/i\n};
}

if ("\F$after_fc\E" =~ /$after_fc/i) {
    print qq{ok - 28 "\\F\$after_fc\\E" =~ /\$after_fc/i\n};
}
else {
    print qq{not ok - 28 "\\F\$after_fc\\E" =~ /\$after_fc/i\n};
}

if ("\F$after_fc\E" =~ /\F$before_fc\E/i) {
    print qq{ok - 29 "\\F\$after_fc\\E" =~ /\\F\$before_fc\\E/i\n};
}
else {
    print qq{not ok - 29 "\\F\$after_fc\\E" =~ /\\F\$before_fc\\E/i\n};
}

if ("\F$after_fc\E" =~ /\F$after_fc\E/i) {
    print qq{ok - 30 "\\F\$after_fc\\E" =~ /\\F\$after_fc\\E/i\n};
}
else {
    print qq{not ok - 30 "\\F\$after_fc\\E" =~ /\\F\$after_fc\\E/i\n};
}

__END__

