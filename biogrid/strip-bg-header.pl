#!/usr/bin/perl -n

if ($in) {
    print $_;
}
else {
    if (/^BIOGRID_ID/ || /^INTERACTOR_A/) {
        $in = 1;
    }
}
