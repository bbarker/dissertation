val out = stdout_ref
//
val () = assertloc(argc = 3)
val expInFi = argv[1]
val rulesInFi = argv[2]
//
val opt =
fileref_open_opt (expInFi, file_mode_r)
val-~Some_vt(inp) = opt
//
val (emap, smap) = gmeanvar_initize(inp)
val ((*void*)) = fileref_close (inp)
//
val opt =
fileref_open_opt (rulesInFi, file_mode_r)
val-~Some_vt(inp) = opt
//
val gxs = parse_fileref (inp)
val ((*void*)) = fileref_close (inp)
//
val grcnfs =
grexplst_cnfize(gxs)
//
val expvars =
grcnflst_minmean_stdev (grcnfs, emap, smap)
//
val () = fprint_list_vt_sep (out, expvars, "\n")
//
val ((*freed*)) = list_vt_free (expvars)
val ((*freed*)) = grcnflst_free (grcnfs)
