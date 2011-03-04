# This file is encoded in Char::Cyrillic.
die "This file is not encoded in Char::Cyrillic.\n" if q{‚ } ne "\x82\xa0";

use strict;
use Char::Cyrillic;

my $__FILE__ = __FILE__;

my %uc = ();
@uc{qw(a b c d e f g h i j k l m n o p q r s t u v w x y z)} =
    qw(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z);
%uc = (%uc,
    "\xD0" => "\xB0", # Char::CYRILLIC LETTER A
    "\xD1" => "\xB1", # Char::CYRILLIC LETTER BE
    "\xD2" => "\xB2", # Char::CYRILLIC LETTER VE
    "\xD3" => "\xB3", # Char::CYRILLIC LETTER GHE
    "\xD4" => "\xB4", # Char::CYRILLIC LETTER DE
    "\xD5" => "\xB5", # Char::CYRILLIC LETTER IE
    "\xD6" => "\xB6", # Char::CYRILLIC LETTER ZHE
    "\xD7" => "\xB7", # Char::CYRILLIC LETTER ZE
    "\xD8" => "\xB8", # Char::CYRILLIC LETTER I
    "\xD9" => "\xB9", # Char::CYRILLIC LETTER SHORT I
    "\xDA" => "\xBA", # Char::CYRILLIC LETTER KA
    "\xDB" => "\xBB", # Char::CYRILLIC LETTER EL
    "\xDC" => "\xBC", # Char::CYRILLIC LETTER EM
    "\xDD" => "\xBD", # Char::CYRILLIC LETTER EN
    "\xDE" => "\xBE", # Char::CYRILLIC LETTER O
    "\xDF" => "\xBF", # Char::CYRILLIC LETTER PE
    "\xE0" => "\xC0", # Char::CYRILLIC LETTER ER
    "\xE1" => "\xC1", # Char::CYRILLIC LETTER ES
    "\xE2" => "\xC2", # Char::CYRILLIC LETTER TE
    "\xE3" => "\xC3", # Char::CYRILLIC LETTER U
    "\xE4" => "\xC4", # Char::CYRILLIC LETTER EF
    "\xE5" => "\xC5", # Char::CYRILLIC LETTER HA
    "\xE6" => "\xC6", # Char::CYRILLIC LETTER TSE
    "\xE7" => "\xC7", # Char::CYRILLIC LETTER CHE
    "\xE8" => "\xC8", # Char::CYRILLIC LETTER SHA
    "\xE9" => "\xC9", # Char::CYRILLIC LETTER SHCHA
    "\xEA" => "\xCA", # Char::CYRILLIC LETTER HARD SIGN
    "\xEB" => "\xCB", # Char::CYRILLIC LETTER YERU
    "\xEC" => "\xCC", # Char::CYRILLIC LETTER SOFT SIGN
    "\xED" => "\xCD", # Char::CYRILLIC LETTER E
    "\xEE" => "\xCE", # Char::CYRILLIC LETTER YU
    "\xEF" => "\xCF", # Char::CYRILLIC LETTER YA
    "\xF1" => "\xA1", # Char::CYRILLIC LETTER IO
    "\xF2" => "\xA2", # Char::CYRILLIC LETTER DJE
    "\xF3" => "\xA3", # Char::CYRILLIC LETTER GJE
    "\xF4" => "\xA4", # Char::CYRILLIC LETTER UKRAINIAN IE
    "\xF5" => "\xA5", # Char::CYRILLIC LETTER DZE
    "\xF6" => "\xA6", # Char::CYRILLIC LETTER BYELORUSSIAN-UKRAINIAN I
    "\xF7" => "\xA7", # Char::CYRILLIC LETTER YI
    "\xF8" => "\xA8", # Char::CYRILLIC LETTER JE
    "\xF9" => "\xA9", # Char::CYRILLIC LETTER LJE
    "\xFA" => "\xAA", # Char::CYRILLIC LETTER NJE
    "\xFB" => "\xAB", # Char::CYRILLIC LETTER TSHE
    "\xFC" => "\xAC", # Char::CYRILLIC LETTER KJE
    "\xFE" => "\xAE", # Char::CYRILLIC LETTER SHORT U
    "\xFF" => "\xAF", # Char::CYRILLIC LETTER DZHE
);

printf("1..%d\n", scalar(keys %uc));

my $tno = 1;
for my $char (sort keys %uc){
    if (uc($char) eq $uc{$char}) {
        printf(qq{ok - $tno uc("\\x%02X") eq "\\x%02X" $^X $__FILE__\n}, ord($char), ord($uc{$char}));
    }
    else {
        printf(qq{not ok - $tno uc("\\x%02X") eq "\\x%02X" $^X $__FILE__\n}, ord($char), ord($uc{$char}));
    }
    $tno++;
}

__END__
