V = 2.0.59

interactions.pro: BIOGRID-ALL-$(V).tab.txt
	./strip-bg-header.pl $< > $@.tmp && tbl2p -p interaction $@.tmp > $@

idmap-%.pro: BIOGRID-IDENTIFIERS-$(V).tab.txt
	./strip-bgi-header.pl $< | grep $* > $@.tmp && tbl2p -p idmap $@.tmp > $@

biogrid-hs.pro: idmap-Homo.pro interactions.pro
	blip-findall -i $< -i interactions.pro -goal "[combine]" "interacts_with(A,B,9606)" -select "interacts_with(A,B)"  -write_prolog > $@

biogrid-hs-gene.pro: idmap-Homo.pro interactions.pro
	blip-findall -i $< -i interactions.pro -goal "[combine]" "interacts_with(A,B,'ENTREZ_GENE','NCBI_Gene:',9606)" -select "interacts_with(A,B)"  -write_prolog > $@
