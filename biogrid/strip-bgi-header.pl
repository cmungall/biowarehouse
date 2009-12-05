#!/usr/bin/perl -n

if ($in) {
    next if /GENBANK/;
    next if /REFSEQ/;
    print $_;
}
else {
    if (/^BIOGRID_ID/ || /^INTERACTOR_A/) {
        $in = 1;
    }
}
