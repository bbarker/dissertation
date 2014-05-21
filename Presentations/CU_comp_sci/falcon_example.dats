datatype grexp =
  | GRgene of gene
  | GRconj of grexplst
  | GRdisj of grexplst
  | GRempty of ((*void*))
  | GRerror of ((*void*))
// end of [grexp]
where grexplst = List0 (grexp)
//
fun grexp_cnfize (gx: grexp): grcnf
//
val gx1 = GRgene( gene_make_name ("g1") )
val gx2 = GRgene( gene_make_name ("g2") )
val gx3 = GRgene( gene_make_name ("g3") )
val gx4 = GRgene( gene_make_name ("g4") )
val gx5 = GRgene( gene_make_name ("g5") )
//
val gx123 = GRconj($list{grexp}(gx1, gx2, gx3))
val gx2345 = GRconj($list{grexp}(gx2, gx3, gx4, gx5))
//
val gxall = GRdisj($list{grexp}(gx123, gx2345)) 
//
val grcnf = grexp_cnfize (gxall)
//
val () = fprint_grexp (out, gxall)
//
val () = fprint_grcnf (out, grcnf)
val () = fprintln! (out, "|grcnf| = ", length(grcnf))
//
val ((*void*)) = grcnf_free (grcnf)
