# This file is encoded in Char::Cyrillic.
die "This file is not encoded in Char::Cyrillic.\n" if q{‚ } ne "\x82\xa0";

use strict;
use Char::Cyrillic;

my $__FILE__ = __FILE__;

my %lc = ();
@lc{qw(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)} =
    qw(a b c d e f g h i j k l m n o p q r s t u v w x y z);
%lc = (%lc,
    "\xA1" => "\xF1", # Char::CYRILLIC LETTER IO
    "\xA2" => "\xF2", # Char::CYRILLIC LETTER DJE
    "\xA3" => "\xF3", # Char::CYRILLIC LETTER GJE
    "\xA4" => "\xF4", # Char::CYRILLIC LETTER UKRAINIAN IE
    "\xA5" => "\xF5", # Char::CYRILLIC LETTER DZE
    "\xA6" => "\xF6", # Char::CYRILLIC LETTER BYELORUSSIAN-UKRAINIAN I
    "\xA7" => "\xF7", # Char::CYRILLIC LETTER YI
    "\xA8" => "\xF8", # Char::CYRILLIC LETTER JE
    "\xA9" => "\xF9", # Char::CYRILLIC LETTER LJE
    "\xAA" => "\xFA", # Char::CYRILLIC LETTER NJE
    "\xAB" => "\xFB", # Char::CYRILLIC LETTER TSHE
    "\xAC" => "\xFC", # Char::CYRILLIC LETTER KJE
    "\xAE" => "\xFE", # Char::CYRILLIC LETTER SHORT U
    "\xAF" => "\xFF", # Char::CYRILLIC LETTER DZHE
    "\xB0" => "\xD0", # Char::CYRILLIC LETTER A
    "\xB1" => "\xD1", # Char::CYRILLIC LETTER BE
    "\xB2" => "\xD2", # Char::CYRILLIC LETTER VE
    "\xB3" => "\xD3", # Char::CYRILLIC LETTER GHE
    "\xB4" => "\xD4", # Char::CYRILLIC LETTER DE
    "\xB5" => "\xD5", # Char::CYRILLIC LETTER IE
    "\xB6" => "\xD6", # Char::CYRILLIC LETTER ZHE
    "\xB7" => "\xD7", # Char::CYRILLIC LETTER ZE
    "\xB8" => "\xD8", # Char::CYRILLIC LETTER I
    "\xB9" => "\xD9", # Char::CYRILLIC LETTER SHORT I
    "\xBA" => "\xDA", # Char::CYRILLIC LETTER KA
    "\xBB" => "\xDB", # Char::CYRILLIC LETTER EL
    "\xBC" => "\xDC", # Char::CYRILLIC LETTER EM
    "\xBD" => "\xDD", # Char::CYRILLIC LETTER EN
    "\xBE" => "\xDE", # Char::CYRILLIC LETTER O
    "\xBF" => "\xDF", # Char::CYRILLIC LETTER PE
    "\xC0" => "\xE0", # Char::CYRILLIC LETTER ER
    "\xC1" => "\xE1", # Char::CYRILLIC LETTER ES
    "\xC2" => "\xE2", # Char::CYRILLIC LETTER TE
    "\xC3" => "\xE3", # Char::CYRILLIC LETTER U
    "\xC4" => "\xE4", # Char::CYRILLIC LETTER EF
    "\xC5" => "\xE5", # Char::CYRILLIC LETTER HA
    "\xC6" => "\xE6", # Char::CYRILLIC LETTER TSE
    "\xC7" => "\xE7", # Char::CYRILLIC LETTER CHE
    "\xC8" => "\xE8", # Char::CYRILLIC LETTER SHA
    "\xC9" => "\xE9", # Char::CYRILLIC LETTER SHCHA
    "\xCA" => "\xEA", # Char::CYRILLIC LETTER HARD SIGN
    "\xCB" => "\xEB", # Char::CYRILLIC LETTER YERU
    "\xCC" => "\xEC", # Char::CYRILLIC LETTER SOFT SIGN
    "\xCD" => "\xED", # Char::CYRILLIC LETTER E
    "\xCE" => "\xEE", # Char::CYRILLIC LETTER YU
    "\xCF" => "\xEF", # Char::CYRILLIC LETTER YA
);

printf("1..%d\n", scalar(keys %lc));

my $tno = 1;
for my $char (sort keys %lc){
    if (lc($char) eq $lc{$char}) {
        printf(qq{ok - $tno lc("\\x%02X") eq "\\x%02X" $^X $__FILE__\n}, ord($char), ord($lc{$char}));
    }
    else {
        printf(qq{not ok - $tno lc("\\x%02X") eq "\\x%02X" $^X $__FILE__\n}, ord($char), ord($lc{$char}));
    }
    $tno++;
}

__END__
