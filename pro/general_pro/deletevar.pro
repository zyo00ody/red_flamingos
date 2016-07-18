Pro deletevar, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, $
               v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, $
               v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, $
               v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57
;+
; NAME:
;       DELETEVAR
;       
; PURPOSE:
;       Deletes multiple variables from memory at the same time. You can add as many keywords as you want without
;       changing the code below.
;       
; WARNING:
;       This code is not useful for deleting one variable at a time. In this case, use v1 = !NULL instead.
;       
; CALLING SEQUENCE:
;       deletevar, v1[, v2, v3, (...)]
;
; INPUTS:
;       vi = The ith variable to be deleted from memory.
;
; OUTPUTS:
;       None.
;
; RESTRICTIONS:
;       None.
;
; EXAMPLE:
;       -
;
; PROCEDURES USED:
;       None.
;
; MODIFICATION HISTORY:
;       WRITTEN, Jonathan Gagne, September, 3 2011
;-
  
  on_error, 2
  compile_opt hidden
  
  n = n_params()
  for i=0, n-1 do $
    void = execute('void = temporary(v'+strtrim(i+1,2)+')')
  
End
