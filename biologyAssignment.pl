#!/usr/bin/perl -w

no warnings;

#aminoacid code, key-> triplets of DNA, value-> aminoacids
%aacode = (
  TTT => "F", TTC => "F", TTA => "L", TTG => "L",
  TCT => "S", TCC => "S", TCA => "S", TCG => "S",
  TAT => "Y", TAC => "Y", TAA => "STOP", TAG => "STOP",
  TGT => "C", TGC => "C", TGA => "STOP", TGG => "W",
  CTT => "L", CTC => "L", CTA => "L", CTG => "L",
  CCT => "P", CCC => "P", CCA => "P", CCG => "P",
  CAT => "H", CAC => "H", CAA => "Q", CAG => "Q",
  CGT => "R", CGC => "R", CGA => "R", CGG => "R",
  ATT => "I", ATC => "I", ATA => "I", ATG => "M",
  ACT => "T", ACC => "T", ACA => "T", ACG => "T",
  AAT => "N", AAC => "N", AAA => "K", AAG => "K",
  AGT => "S", AGC => "S", AGA => "R", AGG => "R",
  GTT => "V", GTC => "V", GTA => "V", GTG => "V",
  GCT => "A", GCC => "A", GCA => "A", GCG => "A",
  GAT => "D", GAC => "D", GAA => "E", GAG => "E",
  GGT => "G", GGC => "G", GGA => "G", GGG => "G",
);

#DNA sequence
$seq='GTACTGTATTTTCATTCCTCTTAGTTATCTCCCTAAAAAGACTCTGAGTTCCTTGAACACAGGAAGGTGTTTTATTTGATTTTGTTATCCTCAGCATGTAGCAGTGTCTGACACACAGTAGGTGCTCTATCACTGTGAGAGGGATGGATGGATGGGTGGAGTTACAGATGGATAGAAGGATAGATGGAGGGATGGGTGGATGATGGATGGATAGATGGATGGAGGGGGGATGATGAATGGAGGGATAATGAGTGGATGAATGAGGGAATGGGTGGATGGATGGATGGAGGGATGGAGGAACAGATAGATAGATGGAGGGATGGGTGGGTGATGGATGGATAGATGGATGGAGGGAGGGATGATGAATGGAGGGATAATGAATGGATGAATGAGGGGATGGGTGGATGGATGAATGGAGGGATGATGGGTGGATGAATGAATTGAGGGATGGATGGATGAACACATGGATGGATGGATAGATGGATAGATGGAGGAACTGGTGGATTTTGGATGGATGGGTGGATGGATAGATGAATGAATGCCTGGATAGACAAAGAGATGATGGATAGATGAATAGATGAATTAAGGGATGTCGGATAGATGGAGGGATTGATAGATGTTGGATGGATGGGTGGTGGATGGATAGATGAGTGAATGCATGGATAGACAAAGAGATGATGGATGGATGAATTAAGGGATGACAGATGGATGGATGGATGAGTAACTGGATGGACAAGTGGATAAATGGATAGATGGTTGAATACCTGAAT';

$l=length $seq;
print "\n\nTranslation from the first nucleotide base:\n";
$count=0;
for ( $i = 0; $i <= $l; $i+=3) {
	$codon = substr($seq,$i,3);
	if("$aacode{$codon}" eq "M"){
		$count++;
		print "\n$count"."start codon\n";
		for ( $j = $i; $j <= $l; $j+=3){
			print "$aacode{substr($seq,$j,3)}";
		}
	}
}
print "\n\nTranslation from the second nucleotide base:\n";
$count=0;
for ( $i = 1; $i <= $l; $i+=3) {
	$codon = substr($seq,$i,3);
	if("$aacode{$codon}" eq "M"){
		$count++;
		print "\n$count"."start codon\n";
		for ( $j = $i; $j <= $l; $j+=3){
			print "$aacode{substr($seq,$j,3)}";
		}
	}
}
print "\n\nTranslation from the third nucleotide base:\n";
$count=0;
for ( $i = 2; $i <= $l; $i+=3) {
	$codon = substr($seq,$i,3);
	if("$aacode{$codon}" eq "M"){
		$count++;
		print "\n$count"."start codon\n";
		for ( $j = $i; $j <= $l; $j+=3){
			print "$aacode{substr($seq,$j,3)}";
		}
	}
}
print "\n";
