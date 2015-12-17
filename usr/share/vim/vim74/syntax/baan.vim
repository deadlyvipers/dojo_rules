" Vim syntax file"
" Language:	Baan
" Maintainer:	Erik Remmelzwaal (erik.remmelzwaal 0x40 ssaglobal.com)
" Originally owned by: Erwin Smit / Her van de Vliert
" Last change:  v1.17 2006/04/26 10:40:18

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
"
if version < 600
  syntax clear
  if exists("baan_fold")
	  unlet baan_fold
  endif
elseif exists("b:current_syntax")
  finish
endif

"********************************** Lexical setting ***************************"
syn case ignore
setlocal iskeyword+=.
"setlocal ignorecase 	"This is not a local yet ;-(
" Identifier
syn match   baanIdentifier "\<\k\+\>"

"************************************* 3GL ************************************"
syn match   baan3glpre "#ident\>"
syn match   baan3glpre "#include\>"
syn region  baan3glpre start="#define\>" end="^[^^|]"me=s-1 contains=baanString,baanConstant,baanNumber,baanComment,baansql
syn match   baan3glpre "#undef\>"
syn match   baan3glpre "#pragma\>"
syn match   baan3glpre "#if\>"
syn match   baan3glpre "#ifdef\>"
syn match   baan3glpre "#ifndef\>"
syn match   baan3glpre "#elif\>"
syn match   baan3glpre "#else\>"
syn match   baan3glpre "#endif\>"

" Some keywords are only defined when no foldinat based break bset call continue default
syn keyword baan3gl empty  fixed ge global goto gt le lt mb
syn keyword baan3gl multibyte ne ofr prompt repeat static step stop
syn keyword baan3gl until void wherebind ref reference break continue
syn keyword baan3gl and or to not in
syn keyword baan3gl eq input end return at print
syn keyword baanType domain double long string table boolean common
syn keyword baanType bset void xmlNode
syn keyword baanStorageClass dim base based extern global fixed MB const
syn keyword baanConstant pi true false

" Folding settings
if exists("baan_fold") && baan_fold
  syn region baanFunctionFold matchgroup=baan3gl start="^\z(\s*\)\<function\>" matchgroup=NONE end="^\z1}" transparent fold keepend
else
  syn keyword baan3gl function
endif
if exists("baan_fold") && baan_fold && exists("baan_fold_block") && baan_fold_block
  syn region  baanCondFold matchgroup=baanConditional start="^\z(\s*\)\(if\>\|else\>\)" end="^\z1endif\>" end="^\z1else\>"me=s-1 transparent fold keepend extend
  syn region  baanCondFold matchgroup=baanConditional start="^\z(\s*\)for\>"            end="^\z1endfor\>" transparent fold keepend extend
  syn region  baanCondFold matchgroup=baanConditional start="^\z(\s*\)while\>"          end="^\z1endwhile\>" transparent fold keepend extend
  syn region  baanDLLUsage matchgroup=baan3gl         start="^\z(\s*\)dllusage\>"       end="^\z1enddllusage\>" fold contains=baanNumber,baanConstant,baanType
  syn region  baanFunUsage matchgroup=baan3gl         start="^\z(\s*\)functionusage\>"  end="^\z1endfunctionusage\>" fold  contains=baanNumber,baanConstant,baanType
  syn region  baanCondFold matchgroup=baanConditional start="^\z(\s*\)\(case\>\|default\>\)\>" end="^\z1endcase\>" end="^\z1\(case\>\|default\>\)"me=s-1 transparent fold keepend extend
  syn keyword baanConditional then else endif while endwhile endfor case endcase 
  syn match   baanConditional "\<on case\>"
else
  syn match   baanConditional "\<for\>" contains=baansql
  syn match   baanConditional "\<on case\>"
  syn keyword baanConditional if then else endif while endwhile endfor case endcase default
  syn region  baanDLLUsage matchgroup=baan3gl start="\<dllusage\>" end="\<enddllusage\>" contains=baanNumber,baanConstant,baanType
  syn region  baanFunUsage matchgroup=baan3gl start="\<functionusage\>" end="\<endfunctionusage\>" contains=baanNumber,baanConstant,baanType
endif

"************************************* SQL ************************************"
syn keyword baansql from selectbind 
syn keyword baansql where wherebind whereused exsists  
syn keyword baansql between inrange having
syn keyword baansql hint ordered asc desc
syn match   baansql "\<as set with \d\+ rows\>"
syn match   baansql "\<as prepared set\>"
syn match   baansql "\<as prepared set with \d\+ rows\>"
syn match   baansql "\<with retry\>"
syn match   baansql "\<with retry repeat last row\>"
syn match   baansql "\<for update\>"
syn match   baansql "\<order by\>"
syn match   baansql "\<group by\>"
syn match   baansql "\<union all\>"
" references
syn keyword path reference 
syn match   baansql "\<refers to\>"
syn match   baansql "\<unref clear\>"
syn match   baansql "\<unref setunref\>"
syn match   baansql "\<unref clearunref\>"
syn match   baansql "\<unref skip\>"
" hints
syn keyword baansql hint and ordered asc desc
syn match   baansql "\<use index \d\+ on\>"
syn match   baansql "\<array fetching\>"
syn match   baansql "\<no array fetching\>"
syn match   baansql "\<array size \d\+\>"
syn match   baansql "\<all rows\>"
syn match   baansql "\<first rows\>"
syn match   baansql "\<buffer \d\+ rows\>"
syn match   baansql "\<no hints\>"
" update
syn keyword baansql set

if exists("baan_fold") && baan_fold && exists("baan_fold_sql") && baan_fold_sql
  syn region baanSQLFold matchgroup=baansql start="^\z(\s*\)\(select\>\|selectdo\>\|selectempty\>\|selecterror\>\|selecteos\>\)" end="^\z1endselect\>" end="^\z1\(selectdo\>\|selectempty\>\|selecterror\>\|selecteos\>\)"me=s-1 transparent fold keepend extend
  "syn region baanSQLFold matchgroup=baansql start="^\z(\s*\)\(update\>\|updateempty\>\|updateerror\>\|selecteos\>\)"             end="^\z1endupdate\>" end="^\z1\(updateempty\>\|updateerror\>\|selecteos\>\)"me=s-1 transparent fold keepend extend
  syn region baanSQLFold matchgroup=baansql start="^\z(\s*\)\(update\>\|updateempty\>\|updateerror\>\)"             end="^\z1endupdate\>" end="^\z1\(updateempty\>\|updateerror\>\)"me=s-1 transparent fold keepend extend
  syn region baanSQLFold matchgroup=baansql start="^\z(\s*\)\(delete\s\+from\>\|deleteempty\>\|deleteerror\>\)"                  end="^\z1enddelete\>" end="^\z1\(deleteempty\>\|deleteerror\>\)"me=s-1 transparent fold keepend extend
else
  syn keyword baansql select selectdo selectempty selecterror selecteos endselect
  " delete
  syn match   baansql "\<delete from\>"
  syn keyword baansql deleteempty deleteerror deleteeos enddelete
  " update
  syn keyword baansql update updateempty updateerror updateeos endupdate
endif

setlocal foldmethod=syntax
"syn sync fromstart
syn sync minlines=100


"These are bshell functions
if exists("baan_obsolete")
syn match   baansql "commit\.transaction()"
syn match   baansql "abort\.transaction()"
syn match   baansql "db\.columns\.to\.record"
syn match   baansql "db\.record\.to\.columns"
syn match   baansql "db\.bind"
syn match   baansql "db\.change\.order"
syn match   baansql "db\.set\.to\.default"
syn match   baansql "DB\.RETRY"
syn match   baansql "db\.delayed\.lock"
syn match   baansql "db\.retry\.point()"
syn match   baansql "db\.retry\.hit()"
syn match   baansql "db\.return\.dupl"
syn match   baansql "db\.skip\.dupl"
syn match   baansql "db\.row\.length"
endif

" Constants
syn keyword baanConstant __function__
syn keyword baanConstant __object__ 
syn keyword baanConstant __file__
syn keyword baanConstant __line__

syn keyword baanConstant ABORT.PROGRAM
syn keyword baanConstant ADD.SET
syn keyword baanConstant ALL_ENUMS_EXCEPT
syn keyword baanConstant APPL.EXCL
syn keyword baanConstant APPL.READ
syn keyword baanConstant APPL.WAIT
syn keyword baanConstant APPL.WIDE
syn keyword baanConstant APPL.WRITE
syn keyword baanConstant ASK.HELPINFO
syn keyword baanConstant AUTG_PRINT
syn keyword baanConstant AUTG_DISPLAY
syn keyword baanConstant AUTG_MODIFY
syn keyword baanConstant AUTG_INSERT
syn keyword baanConstant AUTG_DELETE
syn keyword baanConstant AUTG_ALL
syn keyword baanConstant BMS
syn keyword baanConstant CALCULATOR
syn keyword baanConstant CALENDAR
syn keyword baanConstant CHANGE.ORDER
syn keyword baanConstant CMD.OPTIONS
syn keyword baanConstant CMD.WHATS.THIS
syn keyword baanConstant CMF.MESSAGE
syn keyword baanConstant CMF.TASK
syn keyword baanConstant CMF.APPOINTMENT
syn match   baanConstant "\<COMPANY\$"
syn keyword baanConstant COMPNR
syn keyword baanConstant CONT.PROCESS
syn keyword baanConstant CREATE.JOB
syn keyword baanConstant DALNOOBJSET
syn keyword baanConstant DALNOMETHOD
syn keyword baanConstant DALNOOBJSETID
syn keyword baanConstant DALNOOBJECTID
syn keyword baanConstant DALNOPROP
syn keyword baanConstant DALNOLOCMODE
syn keyword baanConstant DALNOGETPOS
syn keyword baanConstant DALNOSETPERM
syn keyword baanConstant DALNOOBJPERM
syn keyword baanConstant DALDBERROR
syn keyword baanConstant DALHOOKERROR
syn keyword baanConstant DALNOQUERYID
syn keyword baanConstant DAL_DESTROY
syn keyword baanConstant DAL_FIND
syn keyword baanConstant DAL_GET_CURR
syn keyword baanConstant DAL_GET_FIRST
syn keyword baanConstant DAL_GET_LAST
syn keyword baanConstant DAL_GET_NEXT
syn keyword baanConstant DAL_GET_PREV
syn keyword baanConstant DAL_GET_SPECIFIED
syn keyword baanConstant DAL_NEW
syn keyword baanConstant DAL_UPDATE
syn keyword baanConstant DB.ARRAY
syn keyword baanConstant DB.BASED
syn keyword baanConstant DB.BITSET
syn keyword baanConstant DB.BYTE
syn keyword baanConstant DB.CHECK.IGNORED.REF
syn keyword baanConstant DB.CHILD
syn keyword baanConstant DB.CLEAR.NO.ROLLBACK
syn keyword baanConstant DB.CLEAR.WITH.ROLLBACK
syn keyword baanConstant DB.COMBINED
syn keyword baanConstant DB.DATE
syn keyword baanConstant DB.DELAYED.LOCK
syn keyword baanConstant DB.DOUBLE
syn keyword baanConstant DB.ENUM
syn keyword baanConstant DB.EXIT.ON.DUPL
syn keyword baanConstant DB.EXIT.ON.NOREC
syn keyword baanConstant DB.EXIT.ON.ROWCHANGED
syn keyword baanConstant DB.FILLED
syn keyword baanConstant DB.FIXED
syn keyword baanConstant DB.FL.LOCK
syn keyword baanConstant DB.FLOAT
syn keyword baanConstant DB.IGNORE.ALL.REFS
syn keyword baanConstant DB.INTEGER
syn keyword baanConstant DB.IS.REF.TO
syn keyword baanConstant DB.LOCK
syn keyword baanConstant DB.LONG
syn keyword baanConstant DB.MAIL
syn keyword baanConstant DB.MULTIBYTE
syn keyword baanConstant DB.NOT.ACTIV
syn keyword baanConstant DB.PAR.IS.REF.TO
syn keyword baanConstant DB.REF.CASCADE
syn keyword baanConstant DB.REF.CHK.RUNTIME
syn keyword baanConstant DB.REF.DELETE
syn keyword baanConstant DB.REF.NOP
syn keyword baanConstant DB.REF.NULLIFY
syn keyword baanConstant DB.REF.RESTRICTED
syn keyword baanConstant DB.REF.UPDATE
syn keyword baanConstant DB.RETRY
syn keyword baanConstant DB.RETURN.DUPL
syn keyword baanConstant DB.RETURN.ERROR
syn keyword baanConstant DB.RETURN.NOREC
syn keyword baanConstant DB.RETURN.REF.EXISTS
syn keyword baanConstant DB.RETURN.REF.NOT.EXISTS
syn keyword baanConstant DB.RETURN.ROWCHANGED
syn keyword baanConstant DB.RPOINT
syn keyword baanConstant DB.SKIP.DUPL
syn keyword baanConstant DB.SKIP.NOREC
syn keyword baanConstant DB.SKIP.ROWCHANGED
syn keyword baanConstant DB.STRING
syn keyword baanConstant DB.TEXT
syn keyword baanConstant DB.TIME
syn keyword baanConstant DBG_BDB_ACTIONS
syn keyword baanConstant DBG_BDB_DELAY_LOCK
syn keyword baanConstant DBG_BDB_REFER
syn keyword baanConstant DBG_BDB_SERVER_TYPE
syn keyword baanConstant DBG_DATA_SIZE
syn keyword baanConstant DBG_DEBUG_MESG
syn keyword baanConstant DBG_DEBUG_TSS
syn keyword baanConstant DBG_FILE
syn keyword baanConstant DBG_FILEDEV
syn keyword baanConstant DBG_FUN_DEBUG
syn keyword baanConstant DBG_GET_PUT_VAR
syn keyword baanConstant DBG_INSTR_DEBUG
syn keyword baanConstant DBG_MUL_ACTION
syn keyword baanConstant DBG_OBJ_SIZE
syn keyword baanConstant DBG_PRINT_ENUMS
syn keyword baanConstant DBG_REF_PATH
syn keyword baanConstant DBG_RESOURCE_DBG
syn keyword baanConstant DBG_SCHED_DEBUG
syn keyword baanConstant DBG_SHOW_FLOW
syn keyword baanConstant DBG_SHOW_TRACE
syn keyword baanConstant DBG_SRDD_USAGE
syn keyword baanConstant DEBUG
syn keyword baanConstant DEF.FIND
syn keyword baanConstant DISPLAY.SET
syn keyword baanConstant DIS.RESTARTED
syn keyword baanConstant DLL_OVERLOAD
syn keyword baanConstant DLL_OVERLOAD_ALL
syn keyword baanConstant DLL_SILENT_ERR
syn keyword baanConstant DSTerminationCreateProcess
syn keyword baanConstant DSTerminationCreateThread
syn keyword baanConstant DSTerminationNormalExit
syn keyword baanConstant DSTerminationOpenStderr
syn keyword baanConstant DSTerminationOpenStdin
syn keyword baanConstant DSTerminationOpenStdout
syn keyword baanConstant DSTerminationSetDir
syn keyword baanConstant DUPL.OCCUR
syn keyword baanConstant E2BIG
syn keyword baanConstant EABORT
syn keyword baanConstant EACCES
syn keyword baanConstant EAGAIN
syn keyword baanConstant EAUDIT
syn keyword baanConstant EBADADRS
syn keyword baanConstant EBADARG
syn keyword baanConstant EBADCOLL
syn keyword baanConstant EBADCURSOR
syn keyword baanConstant EBADF
syn keyword baanConstant EBADFILE
syn keyword baanConstant EBADFLD
syn keyword baanConstant EBADKEY
syn keyword baanConstant EBADLOG
syn keyword baanConstant EBADMEM
syn keyword baanConstant EBDBNOTON
syn keyword baanConstant EBDBON
syn keyword baanConstant EBUSY
syn keyword baanConstant ECHILD
syn keyword baanConstant EDDCORRUPT
syn keyword baanConstant EDOM
syn keyword baanConstant EDUPL
syn keyword baanConstant EENDFILE
syn keyword baanConstant EEXIST
syn keyword baanConstant EFAULT
syn keyword baanConstant EFBIG
syn keyword baanConstant EFLOCKED
syn keyword baanConstant EFNAME
syn keyword baanConstant EINTR
syn keyword baanConstant EINVAL
syn keyword baanConstant EIO
syn keyword baanConstant EISDIR
syn keyword baanConstant EISREADONLY
syn keyword baanConstant EKEXISTS
syn keyword baanConstant ELOCKED
syn keyword baanConstant ELOGOPEN
syn keyword baanConstant ELOGREAD
syn keyword baanConstant ELOGWRIT
syn keyword baanConstant EMEMORY
syn keyword baanConstant EMFILE
syn keyword baanConstant EMLINK
syn keyword baanConstant EMLOCKED
syn keyword baanConstant END.PROGRAM
syn keyword baanConstant ENFILE
syn keyword baanConstant ENOBEGIN
syn keyword baanConstant ENOCURR
syn keyword baanConstant ENODD
syn keyword baanConstant ENODELAYEDLOCK
syn keyword baanConstant ENODEV
syn keyword baanConstant ENOENT
syn keyword baanConstant ENOEXEC
syn keyword baanConstant ENOLOK
syn keyword baanConstant ENOMEM
syn keyword baanConstant ENONFS
syn keyword baanConstant ENOREC
syn keyword baanConstant ENOSERVER
syn keyword baanConstant ENOSHMEM
syn keyword baanConstant ENOSPC
syn keyword baanConstant ENOTABLE
syn keyword baanConstant ENOTBLK
syn keyword baanConstant ENOTDIR
syn keyword baanConstant ENOTEXCL
syn keyword baanConstant ENOTINRANGE
syn keyword baanConstant ENOTLOCKED
syn keyword baanConstant ENOTOPEN
syn keyword baanConstant ENOTRANS
syn keyword baanConstant ENOTTY
syn keyword baanConstant ENXIO
syn keyword baanConstant ENUMMASK.INITIAL
syn keyword baanConstant ENUMMASK.GENERAL
syn keyword baanConstant EPERM
syn keyword baanConstant EPIPE
syn keyword baanConstant EPRIMKEY
syn keyword baanConstant ERANGE
syn keyword baanConstant EREFERENCE
syn keyword baanConstant EREFEXISTS
syn keyword baanConstant EREFLOCKED
syn keyword baanConstant EREFNOTEXISTS
syn keyword baanConstant EREFUNDEFINED
syn keyword baanConstant EREFUPDATE
syn keyword baanConstant EROFS
syn keyword baanConstant EROWCHANGED
syn keyword baanConstant ESPIPE
syn keyword baanConstant ESQLCARDINALITYVIOLATION
syn keyword baanConstant ESQLDIVBYZERO
syn keyword baanConstant ESQLFILEIO
syn keyword baanConstant ESQLINDEXOUTOFDIMS
syn keyword baanConstant ESQLINVALIDPARAMETERTYPE
syn keyword baanConstant ESQLQUERY
syn keyword baanConstant ESQLREFER
syn keyword baanConstant ESQLSTRINGTRUNCATION
syn keyword baanConstant ESQLSUBSTRINGERROR
syn keyword baanConstant ESQLSYNTAX
syn keyword baanConstant ESRCH
syn keyword baanConstant ETABLEEXIST
syn keyword baanConstant ETOOMANY
syn keyword baanConstant ETRANSACTIONON
syn keyword baanConstant ETXTBSY
syn keyword baanConstant EUNALLOWEDCOMPNR
syn keyword baanConstant EVTALLEVENTMASK
syn keyword baanConstant EVTARMBUTTON
syn keyword baanConstant EVTARMBUTTONMASK
syn keyword baanConstant EVTBUCKETMESSAGE
syn keyword baanConstant EVTBUTTON1
syn keyword baanConstant EVTBUTTON1MASK
syn keyword baanConstant EVTBUTTON2
syn keyword baanConstant EVTBUTTON2MASK
syn keyword baanConstant EVTBUTTON3
syn keyword baanConstant EVTBUTTON3MASK
syn keyword baanConstant EVTBUTTON4
syn keyword baanConstant EVTBUTTON4MASK
syn keyword baanConstant EVTBUTTON5
syn keyword baanConstant EVTBUTTON5MASK
syn keyword baanConstant EVTBUTTONCHECKED
syn keyword baanConstant EVTBUTTONDPRESS
syn keyword baanConstant EVTBUTTONDPRESSMASK
syn keyword baanConstant EVTBUTTONMOTION
syn keyword baanConstant EVTBUTTONMOTIONMASK
syn keyword baanConstant EVTBUTTONPRESS
syn keyword baanConstant EVTBUTTONPRESSMASK
syn keyword baanConstant EVTBUTTONRELEASE
syn keyword baanConstant EVTBUTTONRELEASEMASK
syn keyword baanConstant EVTBUTTONSELECT
syn keyword baanConstant EVTBUTTONSELECTMASK
syn keyword baanConstant EVTBUTTONUNCHECKED
syn keyword baanConstant EVTBUTTONUNDEFINED
syn keyword baanConstant EVTCHANGEFOCUS
syn keyword baanConstant EVTCHANGEFOCUSMASK
syn keyword baanConstant EVTCHANNELEVENT
syn keyword baanConstant EVTCHECKBOXMASK
syn keyword baanConstant EVTCHECKBOXSELECT
syn keyword baanConstant EVTCLIENTMESSAGE
syn keyword baanConstant EVTCONNECTREQUEST
syn keyword baanConstant EVTCONTROLMASK
syn keyword baanConstant EVTDEATHCHILD
syn keyword baanConstant EVTDEATHCHILDMASK
syn keyword baanConstant EVTDISARMBUTTON
syn keyword baanConstant EVTDISARMBUTTONMASK
syn keyword baanConstant EVTDLLEVENT
syn keyword baanConstant EVTDLLEVENTMASK
syn keyword baanConstant EVTENTERNOTIFY
syn keyword baanConstant EVTENTERNOTIFYMASK
syn keyword baanConstant EVTFIELDSELECT
syn keyword baanConstant EVTFIELDSELECTMASK
syn keyword baanConstant EVTGRIDACTIVATE
syn keyword baanConstant EVTGRIDBUTTONPRESS
syn keyword baanConstant EVTGRIDCHANGEDATA
syn keyword baanConstant EVTGRIDCHANGEFOCUS
syn keyword baanConstant EVTGRIDEVENT
syn keyword baanConstant EVTGRIDEVENTMASK
syn keyword baanConstant EVTGRIDFOCUSCHANGEDBYMOUSE
syn keyword baanConstant EVTGRIDLISTBOXCHANGE
syn keyword baanConstant EVTGRIDMARKCELL
syn keyword baanConstant EVTGRIDMARKCOLUMN
syn keyword baanConstant EVTGRIDMARKRANGE
syn keyword baanConstant EVTGRIDMARKROW
syn keyword baanConstant EVTGRIDMOVECOLUMN
syn keyword baanConstant EVTGRIDMOVEROW
syn keyword baanConstant EVTGRIDRESETSELECTION
syn keyword baanConstant EVTGRIDRESIZECOLUMN
syn keyword baanConstant EVTGRIDRESIZEROW
syn keyword baanConstant EVTHELPCOMMAND
syn keyword baanConstant EVTHELPCONTEXT
syn keyword baanConstant EVTHELPEVENT
syn keyword baanConstant EVTHELPEVENTMASK
syn keyword baanConstant EVTIOEVENT
syn keyword baanConstant EVTIOEVENTMASK
syn keyword baanConstant EVTKEYPRESS
syn keyword baanConstant EVTKEYPRESSMASK
syn keyword baanConstant EVTKILLEVENT
syn keyword baanConstant EVTLEAVENOTIFY
syn keyword baanConstant EVTLEAVENOTIFYMASK
syn keyword baanConstant EVTLISTBOXREASONACTIVATE
syn keyword baanConstant EVTLISTBOXREASONSELECTION
syn keyword baanConstant EVTLISTBOXREASONTEXT
syn keyword baanConstant EVTLISTBOXSELECT
syn keyword baanConstant EVTLISTBOXSELECTMASK
syn keyword baanConstant EVTLOCKMASK
syn keyword baanConstant EVTMAXSIZE
syn keyword baanConstant EVTMENUSELECT
syn keyword baanConstant EVTMENUSELECTMASK
syn keyword baanConstant EVTMOD1MASK
syn keyword baanConstant EVTMOVEWINDOW
syn keyword baanConstant EVTMOVEWINDOWMASK
syn keyword baanConstant EVTNAVIGATOREVENT
syn keyword baanConstant EVTNAVIGATOREVENTMASK
syn keyword baanConstant EVTNOEVENTMASK
syn keyword baanConstant EVTOLEAUTOMATION
syn keyword baanConstant EVTOLECLOSE
syn keyword baanConstant EVTOLECREATEINSTANCE
syn keyword baanConstant EVTOLEDATACHANGED
syn keyword baanConstant EVTOLEEVENT
syn keyword baanConstant EVTOLEEVENTMASK
syn keyword baanConstant EVTOLEHIDEWINDOW
syn keyword baanConstant EVTOLELOADDATA
syn keyword baanConstant EVTOLELOCKSERVER
syn keyword baanConstant EVTOLEOBJECTWINDOWINVISIBLE
syn keyword baanConstant EVTOLEOBJECTWINDOWVISIBLE
syn keyword baanConstant EVTOLERELEASED
syn keyword baanConstant EVTOLESAVEDATA
syn keyword baanConstant EVTOLESETHOSTNAMES
syn keyword baanConstant EVTOLESHOWOBJECT
syn keyword baanConstant EVTOLESHOWWINDOW
syn keyword baanConstant EVTOLEUNLOCKSERVER
syn keyword baanConstant EVTOPTIONSELECT
syn keyword baanConstant EVTPROCESSEVENT
syn keyword baanConstant EVTPUSHBUTTON
syn keyword baanConstant EVTRADIOBOXMASK
syn keyword baanConstant EVTRADIOBOXSELECT
syn keyword baanConstant EVTRESIZEWINDOW
syn keyword baanConstant EVTRESIZEWINDOWMASK
syn keyword baanConstant EVTRUNPROGEXIT
syn keyword baanConstant EVTSCROLLBARSELECT
syn keyword baanConstant EVTSCROLLBARSELECTMASK
syn keyword baanConstant EVTSETFOCUS
syn keyword baanConstant EVTSETFOCUSMASK
syn keyword baanConstant EVTSHIFTMASK
syn keyword baanConstant EVTSLIDERSELECT
syn keyword baanConstant EVTSLIDERSELECTMASK
syn keyword baanConstant EVTSOCKHASDATA
syn keyword baanConstant EVTSOCKIOERROR
syn keyword baanConstant EVTTABSELECT
syn keyword baanConstant EVTTABSELECTMASK
syn keyword baanConstant EVTTERMINATION
syn keyword baanConstant EVTTERMINATIONMASK
syn keyword baanConstant EVTTIMEREVENT
syn keyword baanConstant EVTTIMEREVENTMASK
syn keyword baanConstant EVTTREEREASONACTIVATE
syn keyword baanConstant EVTTREEREASONACTIVATEMASK
syn keyword baanConstant EVTTREEREASONCOLLAPSE
syn keyword baanConstant EVTTREEREASONCOLLAPSEMASK
syn keyword baanConstant EVTTREEREASONEXPAND
syn keyword baanConstant EVTTREEREASONEXPANDMASK
syn keyword baanConstant EVTTREEREASONSELECT
syn keyword baanConstant EVTTREEREASONSELECTMASK
syn keyword baanConstant EVTTREESELECT
syn keyword baanConstant EVTTREESELECTMASK
syn keyword baanConstant EXDEV
syn keyword baanConstant EXPLICIT.MODELESS
syn keyword baanConstant EXTEND_APPEND
syn keyword baanConstant EXTEND_OVERWRITE
syn keyword baanConstant F.ASK.HELPINFO
syn keyword baanConstant F.BACKTAB
syn keyword baanConstant F.BMS
syn keyword baanConstant F.HELP.INDEX
syn keyword baanConstant F.NEXT.FLD
syn keyword baanConstant F.NEXT.OBJ
syn keyword baanConstant F.NEXT.OCC
syn keyword baanConstant F.PREV.FLD
syn keyword baanConstant F.PREV.OBJ
syn keyword baanConstant F.PREV.OCC
syn keyword baanConstant F.RESIZE
syn keyword baanConstant F.RETURN
syn keyword baanConstant F.SCROLL
syn keyword baanConstant F.SELECT.FIELD
syn keyword baanConstant F.SELECT.OPTION
syn keyword baanConstant F.TAB
syn keyword baanConstant F.TO.CHOICE
syn keyword baanConstant F.TO.FIELD
syn keyword baanConstant F.TO.FORM
syn keyword baanConstant F.ZOOM
syn keyword baanConstant FALSE
syn keyword baanConstant FC.CURR.FIELD
syn keyword baanConstant FC.FIRST.FIELD
syn keyword baanConstant FC.FIRST.FORM
syn keyword baanConstant FC.FRM.WINDOW
syn keyword baanConstant FC.GET.HEIGHT.FORM
syn keyword baanConstant FC.GET.SELECTED.FIELD
syn keyword baanConstant FC.GET.SELECTED.OCC
syn keyword baanConstant FC.GET.WIDTH.FORM
syn keyword baanConstant FC.GOTO.FIELD
syn keyword baanConstant FC.GOTO.FIRST.FLD
syn keyword baanConstant FC.GOTO.FIRST.FORM
syn keyword baanConstant FC.GOTO.FORM
syn keyword baanConstant FC.GOTO.NEXT.FLD
syn keyword baanConstant FC.GOTO.NEXT.FORM
syn keyword baanConstant FC.GRA.WINDOW
syn keyword baanConstant FC.KYS.WINDOW
syn keyword baanConstant FC.LAST.FIELD
syn keyword baanConstant FC.LAST.FORM
syn keyword baanConstant FC.MAKE.FLD.CURR
syn keyword baanConstant FC.MOVE.FORM
syn keyword baanConstant FC.NEXT.FIELD
syn keyword baanConstant FC.NEXT.FORM
syn keyword baanConstant FC.OPT.WINDOW
syn keyword baanConstant FC.PREV.FIELD
syn keyword baanConstant FC.PREV.FORM
syn keyword baanConstant FC.RESIZE.FORM
syn keyword baanConstant FC.REST.FRM.ST
syn keyword baanConstant FC.RPT.WINDOW
syn keyword baanConstant FC.SAVE.FRM.ST
syn keyword baanConstant FC.SAVE.SELECT
syn keyword baanConstant FC.SEL.FIELD
syn keyword baanConstant FC.SEL.FORM
syn keyword baanConstant FC.SWITCH.ORDER.OFF
syn keyword baanConstant FC.SWITCH.ORDER.ON
syn keyword baanConstant FC.TEXT.MAIL.WINDOW
syn keyword baanConstant FIND.DATA
syn keyword baanConstant FIRST.FRM
syn keyword baanConstant FIRST.SET
syn keyword baanConstant FIRST.VIEW
syn keyword baanConstant FLDCHANGED
syn keyword baanConstant FLDKEYPRESS
syn keyword baanConstant FORM.TAB.CHANGE
syn keyword baanConstant GET.DEFAULTS
syn keyword baanConstant GETS_ALL_CHARS
syn keyword baanConstant GETS_NORMAL
syn keyword baanConstant GETS_SKIP_ALL
syn keyword baanConstant GLOBAL.COPY
syn keyword baanConstant GLOBAL.DELETE
syn keyword baanConstant HELP_ABOUT
syn keyword baanConstant HELP_ARG_LEN
syn keyword baanConstant HELP_BITMAP
syn keyword baanConstant HELP_BLOCK
syn keyword baanConstant HELP_CHOICE
syn keyword baanConstant HELP_CLIENT_IMAGE_NOTLOADED
syn keyword baanConstant HELP_CLIENT_IMAGE_READY
syn keyword baanConstant HELP_CLIENT_NEW_ARGS
syn keyword baanConstant HELP_CLIENT_NEW_INFO
syn keyword baanConstant HELP_COMMANDS
syn keyword baanConstant HELP_DOMAIN
syn keyword baanConstant HELP_ENUM
syn keyword baanConstant HELP_EXTERNAL
syn keyword baanConstant HELP_FORM
syn keyword baanConstant HELP_FORMFIELD
syn keyword baanConstant HELP_FROM_INDEX
syn keyword baanConstant HELP_GEM
syn keyword baanConstant HELP_GIF
syn keyword baanConstant HELP_GLOSSARY
syn keyword baanConstant HELP_GOTO
syn keyword baanConstant HELP_GOTOBLOCK
syn keyword baanConstant HELP_GO_SYS_DEPENDANT
syn keyword baanConstant HELP_HPGL
syn keyword baanConstant HELP_IFUNCTION
syn keyword baanConstant HELP_IFUNCTION2
syn keyword baanConstant HELP_IFUNCTION3
syn keyword baanConstant HELP_INDEX
syn keyword baanConstant HELP_LABEL
syn keyword baanConstant HELP_LABELHELP
syn keyword baanConstant HELP_MARK
syn keyword baanConstant HELP_MAXTYPE
syn keyword baanConstant HELP_MAX_ARGS
syn keyword baanConstant HELP_MAX_HIST
syn keyword baanConstant HELP_MAX_IMAGE
syn keyword baanConstant HELP_MENU
syn keyword baanConstant HELP_MESSAGE
syn keyword baanConstant HELP_ORGANIZER
syn keyword baanConstant HELP_POPUP_TYPE
syn keyword baanConstant HELP_POSTSCRIPT
syn keyword baanConstant HELP_QUESTION
syn keyword baanConstant HELP_REFERENCE
syn keyword baanConstant HELP_RELATION
syn keyword baanConstant HELP_RELATION2
syn keyword baanConstant HELP_RELATION_DIAGRAM
syn keyword baanConstant HELP_REPORT
syn keyword baanConstant HELP_SESSION
syn keyword baanConstant HELP_STARTSESSION
syn keyword baanConstant HELP_STARTSHELL
syn keyword baanConstant HELP_SUBFUNCTION
syn keyword baanConstant HELP_SYSTEM_DEPENDANT
syn keyword baanConstant HELP_TABLE
syn keyword baanConstant HELP_TABLEFIELD
syn keyword baanConstant HELP_USING
syn keyword baanConstant HOOK_IS_APPLICABLE
syn keyword baanConstant HOOK_IS_DERIVED
syn keyword baanConstant HOOK_IS_MANDATORY
syn keyword baanConstant HOOK_IS_READONLY
syn keyword baanConstant HOOK_IS_VALID
syn keyword baanConstant HOOK_UPDATE
syn keyword baanConstant INCLUDE_ENUMS
syn keyword baanConstant INTERRUPT
syn keyword baanConstant LAST.FRM
syn keyword baanConstant LAST.SET
syn keyword baanConstant LAST.VIEW
syn keyword baanConstant MARK.ABORT
syn keyword baanConstant MARK.DELETE
syn keyword baanConstant MARK.GOTO.NEXT
syn keyword baanConstant MARK.GOTO.PREV
syn keyword baanConstant MARK.OCCUR
syn keyword baanConstant MARK.SHOW.OPT
syn keyword baanConstant MARK.TAG
syn keyword baanConstant MARK.TAG.ALL
syn keyword baanConstant MARK.TO.CHOICE
syn keyword baanConstant MARK.UNTAG
syn keyword baanConstant MARK.UNTAG.ALL
syn keyword baanConstant MARKONE.ACCEPT
syn keyword baanConstant MSG.ALL
syn keyword baanConstant MSG.ERROR
syn keyword baanConstant MSG.INFO
syn keyword baanConstant MSG.WARNING
syn keyword baanConstant MSG.SUCCESS
syn keyword baanConstant MODAL
syn keyword baanConstant MODAL_OVERVIEW
syn keyword baanConstant MODELESS
syn keyword baanConstant MODELESS_ALWAYS
syn keyword baanConstant MODIFY.SET
syn keyword baanConstant MULTI_OCC
syn keyword baanConstant NEXT.FRM
syn keyword baanConstant NEXT.SET
syn keyword baanConstant NEXT.VIEW
syn keyword baanConstant NO.PERM.DEFINED
syn keyword baanConstant NO.PERMISSION
syn keyword baanConstant NO.RESTRICTION
syn keyword baanConstant NO.ROLLBACK
syn keyword baanConstant OLESVR.INIT
syn keyword baanConstant OLESVR.OBJECT.CREATED
syn keyword baanConstant OLESVR.OBJECT.DESTROYED
syn keyword baanConstant OS_OS400
syn keyword baanConstant OS_UNIX
syn keyword baanConstant OS_WINDOWS_95
syn keyword baanConstant OS_WINDOWS_NT
syn keyword baanConstant PERM.DELETE
syn keyword baanConstant PERM.MODIFY
syn keyword baanConstant PERM.READ
syn keyword baanConstant PERM.UNKNOWN
syn keyword baanConstant PERM.WRITE
syn keyword baanConstant PI
syn keyword baanConstant PREV.FRM
syn keyword baanConstant PREV.SET
syn keyword baanConstant PREV.VIEW
syn keyword baanConstant PRINT.DATA
syn keyword baanConstant PROGRESS.BAR
syn keyword baanConstant PROGRESS.CANCEL
syn keyword baanConstant PROGRESS.NOAUTODESTROY
syn keyword baanConstant PROGRESS.RESIZEABLE
syn keyword baanConstant PROGRESS.STOP
syn keyword baanConstant PROGRESS.TIMER
syn keyword baanConstant PRTCL
syn keyword baanConstant PRTCL.END.TRACE
syn keyword baanConstant PRTCL.EXECUTE
syn keyword baanConstant PRTCL.FIELD.OPTION
syn keyword baanConstant PRTCL.GET.DATA
syn keyword baanConstant PRTCL.GET.DATA.ANSWER
syn keyword baanConstant PRTCL.MASK
syn keyword baanConstant PRTCL.PUT.DATA
syn keyword baanConstant PRTCL.START.TRACE
syn keyword baanConstant PRTCL.UNKNOWN
syn keyword baanConstant PSMAXSIZE
syn keyword baanConstant QSS.EQLE
syn keyword baanConstant QSS.EQUAL
syn keyword baanConstant QSS.FIRST
syn keyword baanConstant QSS.GT
syn keyword baanConstant QSS.GTEQ
syn keyword baanConstant QSS.LAST
syn keyword baanConstant QSS.LESS
syn keyword baanConstant QSS.LOOKUP.FOR.STRUCT
syn keyword baanConstant QSS.NE
syn keyword baanConstant QSS.SRC.DUPL.ALLOWED
syn keyword baanConstant QSS.SRC.IS.SORTED
syn keyword baanConstant RDI.CENTER
syn keyword baanConstant RDI.LEFT
syn keyword baanConstant RDI.LOWER
syn keyword baanConstant RDI.NONE
syn keyword baanConstant RDI.RIGHT
syn keyword baanConstant RDI.UPPER
syn keyword baanConstant RECOVER.SET
syn keyword baanConstant RESIZE.FRM
syn keyword baanConstant RESTART.INPUT
syn keyword baanConstant ROTATE.CURR
syn keyword baanConstant RP_IPCINFO_FLAG
syn keyword baanConstant RP_INPROC
syn keyword baanConstant RP_NOWAIT
syn keyword baanConstant RP_NOWAIT_WITH_EVENT
syn keyword baanConstant RP_WAIT
syn keyword baanConstant RUN.JOB
syn keyword baanConstant SAVE.DEFAULTS
syn keyword baanConstant SBADJUST
syn keyword baanConstant SBCONFIRM
syn keyword baanConstant SBDOWN
syn keyword baanConstant SBEND
syn keyword baanConstant SBHOME
syn keyword baanConstant SBMOVE
syn keyword baanConstant SBPGDOWN
syn keyword baanConstant SBPGUP
syn keyword baanConstant SBPRESS
syn keyword baanConstant SBRELEASE
syn keyword baanConstant SBUP
syn keyword baanConstant SEQ_F_R_LCK
syn keyword baanConstant SEQ_F_W_LCK
syn keyword baanConstant SEQ_R_LCK
syn keyword baanConstant SEQ_W_LCK
syn keyword baanConstant SESSION_NO_PERMISSION
syn keyword baanConstant SESSION_DELETE_PERMISSION
syn keyword baanConstant SESSION_INSERT_PERMISSION
syn keyword baanConstant SESSION_MODIFY_PERMISSION
syn keyword baanConstant SESSION_DISPLAY_PERMISSION
syn keyword baanConstant SESSION_PRINT_PERMISSION
syn keyword baanConstant SINGLE_OCC
syn keyword baanConstant ST.ADD.SET
syn keyword baanConstant ST.BITSET
syn keyword baanConstant ST.BITSET.ZOOM
syn keyword baanConstant ST.BRP.RUN
syn keyword baanConstant ST.BRP.SEND
syn keyword baanConstant ST.DEF.FIND
syn keyword baanConstant ST.DOUBLE
syn keyword baanConstant ST.DOUBLE.ZOOM
syn keyword baanConstant ST.DUPL.OCCUR
syn keyword baanConstant ST.ENUM
syn keyword baanConstant ST.ENUM.ZOOM
syn keyword baanConstant ST.FIND.DATA
syn keyword baanConstant ST.FIRST.SET
syn keyword baanConstant ST.LAST.SET
syn keyword baanConstant ST.MARK.DELETE
syn keyword baanConstant ST.MARK.OCCUR
syn keyword baanConstant ST.MB
syn keyword baanConstant ST.MB.ZOOM
syn keyword baanConstant ST.MODIFY.SET
syn keyword baanConstant ST.MULTI.2
syn keyword baanConstant ST.MULTI.3
syn keyword baanConstant ST.NUM.ZOOM
syn keyword baanConstant ST.NUMERIC
syn keyword baanConstant ST.PROG.BUSY
syn keyword baanConstant ST.SINGLE.1
syn keyword baanConstant ST.SINGLE.3
syn keyword baanConstant ST.SINGLE.4
syn keyword baanConstant ST.SORT
syn keyword baanConstant ST.STRING
syn keyword baanConstant ST.STRING.ZOOM
syn keyword baanConstant ST.TEXT
syn keyword baanConstant ST.TEXT.ZOOM
syn keyword baanConstant ST.TIME
syn keyword baanConstant ST.TIME.ZOOM
syn keyword baanConstant ST.UPDATE.DB
syn keyword baanConstant ST.ZOOM
syn keyword baanConstant START.CHART
syn keyword baanConstant START.QUERY
syn keyword baanConstant START.SET
syn keyword baanConstant STAT_EXECUTABLE
syn keyword baanConstant STAT_READABLE
syn keyword baanConstant STAT_WRITEABLE
syn keyword baanConstant SUBDAL
syn keyword baanConstant TDIR
syn keyword baanConstant TEXT.MANAGER
syn keyword baanConstant TFILE
syn keyword baanConstant TRUE
syn keyword baanConstant UPDATE.DB
syn keyword baanConstant USER.0
syn keyword baanConstant USER.1
syn keyword baanConstant USER.2
syn keyword baanConstant USER.3
syn keyword baanConstant USER.4
syn keyword baanConstant USER.5
syn keyword baanConstant USER.6
syn keyword baanConstant USER.7
syn keyword baanConstant USER.8
syn keyword baanConstant USER.9
syn keyword baanConstant WINDOW.DIALOG
syn keyword baanConstant WINDOW.LIST
syn keyword baanConstant WINDOW.MMTCONTROLLER
syn keyword baanConstant WINDOW.MMTSATELLITE
syn keyword baanConstant WINDOW.MODAL.MENU
syn keyword baanConstant WINDOW.MODELESS.MENU
syn keyword baanConstant WINDOW.NONE
syn keyword baanConstant WINDOW.PARAMETER
syn keyword baanConstant WINDOW.SYNCHRONIZED
syn keyword baanConstant WINDOW.WIZARD
syn keyword baanConstant WITH.ROLLBACK
syn keyword baanConstant WU.DLL
syn keyword baanConstant WU.DOMA
syn keyword baanConstant WU.FLDN
syn keyword baanConstant WU.LANGOPT
syn keyword baanConstant WU.MESS
syn keyword baanConstant WU.QUES
syn keyword baanConstant WU.SESS
syn keyword baanConstant WU.TABL
syn keyword baanConstant XML_DATA
syn keyword baanConstant XML_DTD
syn keyword baanConstant XML_ELEMENT
syn keyword baanConstant XML_PI
syn keyword baanConstant Z.AUTOACCEPT
syn keyword baanConstant Z.AUTOZOOM
syn keyword baanConstant Z.MENU
syn keyword baanConstant Z.SESSION
syn keyword baanConstant ZOOM


"************************************* 4GL ************************************"
" Program section
syn match baan4glh "declaration:"
syn match baan4glh "functions:"
syn match baan4glh "before\.program:"
syn match baan4glh "on\.error:"
syn match baan4glh "after\.program:"
syn match baan4glh "after\.update.db.commit:"
syn match baan4glh "before\.display\.object:"

" Form section
syn match baan4glh "form\.\d\+:"
syn match baan4glh "form\.all:"
syn match baan4glh "form\.other:"
syn match baan4gl  "init\.form:"
syn match baan4gl  "before\.form:"
syn match baan4gl  "after\.form:"

" Choice section
syn match baan4glh "choice\.start\.set:"
syn match baan4glh "choice\.first\.view:"
syn match baan4glh "choice\.next\.view:"
syn match baan4glh "choice\.prev\.view:"
syn match baan4glh "choice\.last\.view:"
syn match baan4glh "choice\.def\.find:"
syn match baan4glh "choice\.find\.data:"
syn match baan4glh "choice\.first\.set:"
syn match baan4glh "choice\.next\.set:"
syn match baan4glh "choice\.display\.set:"
syn match baan4glh "choice\.prev\.set:"
syn match baan4glh "choice\.rotate\.curr:"
syn match baan4glh "choice\.last\.set:"
syn match baan4glh "choice\.add\.set:"
syn match baan4glh "choice\.update\.db:"
syn match baan4glh "choice\.dupl\.occur:"
syn match baan4glh "choice\.recover\.set:"
syn match baan4glh "choice\.mark\.delete:"
syn match baan4glh "choice\.mark\.occur:"
syn match baan4glh "choice\.change\.order:"
syn match baan4glh "choice\.modify\.set:"
syn match baan4glh "choice\.restart\.input:"
syn match baan4glh "choice\.print\.data:"
syn match baan4glh "choice\.create\.job:"
syn match baan4glh "choice\.form\.tab\.change:"
syn match baan4glh "choice\.first\.frm:"
syn match baan4glh "choice\.next\.frm:"
syn match baan4glh "choice\.prev\.frm:"
syn match baan4glh "choice\.last\.frm:"
syn match baan4glh "choice\.resize\.frm:"
syn match baan4glh "choice\.cmd\.options:"
syn match baan4glh "choice\.zoom:"
syn match baan4glh "choice\.interrupt:"
syn match baan4glh "choice\.end\.program:"
syn match baan4glh "choice\.abort\.program:"
syn match baan4glh "choice\.cont\.process:"
syn match baan4glh "choice\.text\.manager:"
syn match baan4glh "choice\.run\.job:"
syn match baan4glh "choice\.global\.delete:"
syn match baan4glh "choice\.global\.copy:"
syn match baan4glh "choice\.save\.defaults"
syn match baan4glh "choice\.get\.defaults:"
syn match baan4glh "choice\.start\.chart:"
syn match baan4glh "choice\.start\.query:"
syn match baan4glh "choice\.user\.\d:"
syn match baan4glh "choice\.ask\.helpinfo:"
syn match baan4glh "choice\.calculator:"
syn match baan4glh "choice\.calendar:"
syn match baan4glh "choice\.bms:"
syn match baan4glh "choice\.cmd\.whats\.this:"
syn match baan4glh "choice\.help\.index:"
syn match baan4gl  "before\.choice:"
syn match baan4gl  "on\.choice:"
syn match baan4gl  "after\.choice:"

" Field section
syn match baan4glh "field\.\l\{5}\d\{3}\.\l\{4,8}\.\=c\=:"
syn match baan4glh "field\.e\..\+:"
syn match baan4glh "field\.all:"
syn match baan4glh "field\.other:"
syn match baan4gl  "init\.field:"
syn match baan4gl  "before\.field:"
syn match baan4gl  "before\.input:"
syn match baan4gl  "before\.display:"
syn match baan4gl "selection\.filter:"
syn match baan4gl  "before\.zoom:"
syn match baan4gl  "before\.checks:"
syn match baan4gl  "domain\.error:"
syn match baan4gl  "ref\.input:"
syn match baan4gl  "ref\.display:"
syn match baan4gl  "check\.input:"
syn match baan4gl  "on\.input:"
syn match baan4gl  "when\.field\.changes:"
syn match baan4gl  "after\.zoom:"
syn match baan4gl  "after\.input:"
syn match baan4gl  "after\.display:"
syn match baan4gl  "after\.field:"

" Group section
syn match baan4glh "group\.\d\+:"
syn match baan4gl "init\.group:"
syn match baan4gl "before\.group:"
syn match baan4gl "after\.group:"

" Zoom section
syn match baan4glh "zoom\.from\..\+:"
syn match baan4gl "on\.entry:"
syn match baan4gl "on\.exit:"

" Main table section
syn match baan4glh "main\.table\.io:"
syn match baan4gl "before\.read:"
syn match baan4gl "after\.read:"
syn match baan4gl "before\.write:"
syn match baan4gl "after\.write:"
syn match baan4gl "after\.skip\.write:"
syn match baan4gl "before\.rewrite:"
syn match baan4gl "after\.rewrite:"
syn match baan4gl "after\.skip\.rewrite:"
syn match baan4gl "before\.delete:"
syn match baan4gl "after\.delete:"
syn match baan4gl "after\.skip\.delete:"
syn match baan4gl "read\.view:"

"**************************** Dal Hooks ********************************
syn keyword baanDalHook after.abort.transaction after.commit.transaction after.destroy.object 
syn keyword baanDalHook after.change.object after.get.object after.new.object after.save.object before.change.object
syn keyword baanDalHook before.destroy.object before.get.object before.new.object before.open.object.set before.save.object
syn keyword baanDalHook method.is.allowed set.object.defaults

syn match baanDalHook "\l\{5}\d\{3}\.\l\{4,8}\.check"
syn match baanDalHook "\l\{5}\d\{3}\.\l\{4,8}\.is.valid"
syn match baanDalHook "\l\{5}\d\{3}\.\l\{4,8}\.is.applicable"
syn match baanDalHook "\l\{5}\d\{3}\.\l\{4,8}\.is.never.applicable"
syn match baanDalHook "\l\{5}\d\{3}\.\l\{4,8}\.is.derived"
syn match baanDalHook "\l\{5}\d\{3}\.\l\{4,8}\.is.readonly"
syn match baanDalHook "\l\{5}\d\{3}\.\l\{4,8}\.is.mandatory"
syn match baanDalHook "\l\{5}\d\{3}\.\l\{4,8}\.make.valid"
syn match baanDalHook "\l\{5}\d\{3}\.\l\{4,8}\.update"
syn match baanDalHook "\l\{5}\d\{3}\.\l\{4,8}\..*\.is.applicable"


"number without a dot."
syn match  baanNumber		"\<\-\=\d\+\>"
"number with dot"
syn match  baanNumber		"\<\-\=\d\+\.\d*\>"
"number starting with a dot"
syn match  baanNumber		"\<\-\=\.\d\+\>"

" String Error does not work correct with vim 6.0
syn match   baanOpenStringError +^[^^"]+ display contained excludenl
syn region  baanString	start=+"+  skip=+""+  end=+"+ end=+^[^^]+ contains=baanOpenStringError keepend

" Comment"
syn match   baanComment "|$"
syn match   baanComment "|.$"
syn match   baanComment "|[^ ]"
syn match   baanComment	"|[^#].*[^ ]"
syn match   baanCommenth "^|#lra.*$"
syn match   baanCommenth "^|#mdm.*$"
syn match   baanCommenth "^|#[0-9][0-9][0-9][0-9][0-9].*$"
syn match   baanCommenth "^|#N\=o\=Include.*$"
" Oldcode"
syn match   baanUncommented	"^|[^*#].*[^ ]"
" DLL section
" SpaceError"
syn match    baanSpaces	" "
syn match    baanSpaceError	"\s*$"
syn match    baanSpaceError	"        "

" Baan error"

if exists("baan_code_stds") && baan_code_stds
syn match  BaanError	"^\s*i\..*=\s*\(\k\|\"\)*\s*$"		"assignment of an input var"
syn match  BaanError	"^\s*ref.*\s[ilse]\..*$"		" ref variable defined with i, l, e and s"
syn match  BaanError	"^\s*const.*\s[olse]\..*$"		" const variable defined with o, l, e and s"
syn match  BaanError	"^\s*static.*\s\(i\|g\|l\|o\|io\)\..*$"	" static defined without s."
syn match  BaanError	"^\s*\(domain\s\|long\s\|string\s\).*\so\.\k*[,)]"	" ref variable without ref"
syn match  BaanError	"^\s*\(domain\s\|long\s\|string\s\).*\se\.\k*[,)]"	" 'e.' variable without extern"
syn match  BaanError	"^\s*i\..*,\s*|\s*ref.*$"	" 
endif

"**************************** bshell functions ********************************
syn match   baanBshell "\<shiftl\$"
syn match   baanBshell "\<shiftr\$"
syn match   baanBshell "\<shiftc\$"
syn match   baanBshell "\<strip\$"
syn match   baanBshell "\<tolower\$"
syn match   baanBshell "\<toupper\$"
syn keyword baanBshell isdigit
syn keyword baanBshell isspace
syn match   baanBshell "\<chr\$"
syn keyword baanBshell len.in.bytes
syn keyword baanBshell rpos
syn match   baanBshell "\<sprintf\$"
syn match   baanBshell "\<vsprintf\$"
syn match   baanBshell "\<concat\$"
syn keyword baanBshell gregdate
syn match   baanBshell "\<w.to.dat\$"
syn keyword baanBshell ttyname
syn match   baanBshell "\<ttyname\$"
syn match   baanBshell "\<creat.tmp.file\$"
syn match   baanBshell "\<string.set\$"
syn keyword baanBshell string.scan
syn keyword baanBshell not.fixed
syn keyword baanBshell dummy
syn keyword baanBshell alloc.mem
syn keyword baanBshell free.mem
syn keyword baanBshell copy.mem
syn keyword baanBshell cmp.mem
syn keyword baanBshell set.mem
syn keyword baanBshell num.to.date
syn keyword baanBshell date.to.num
syn keyword baanBshell num.to.week
syn keyword baanBshell week.to.num
syn match   baanBshell "\<num.to.date\$"
syn keyword baanBshell expr.compile
syn keyword baanBshell l.expr
syn keyword baanBshell d.expr
syn match   baanBshell "\<s.expr\$"
syn keyword baanBshell expr.free
syn keyword baanBshell compnr.check
syn match   baanBshell "\<bse.dir\$"
syn match   baanBshell "\<bse.tmp.dir\$"
syn match   baanBshell "\<bse.release\$"
syn match   baanBshell "\<bse.portset\$"
syn match   baanBshell "\<getenv\$"
syn keyword baanBshell base.extern
syn keyword baanBshell at.base
syn keyword baanBshell get.compnr
syn keyword baanBshell base.next
syn keyword baanBshell get.argc
syn keyword baanBshell get.long.arg
syn keyword baanBshell get.double.arg
syn keyword baanBshell get.string.arg
syn keyword baanBshell get.arg.type
syn keyword baanBshell put.long.arg
syn keyword baanBshell put.double.arg
syn keyword baanBshell put.string.arg
syn keyword baanBshell setenv
syn keyword baanBshell cmp.password
syn match   baanBshell "\<crypt.password\$"
syn keyword baanBshell is.password.ok
syn keyword baanBshell block.cipher.encrypt
syn keyword baanBshell block.cipher.decrypt
syn keyword baanBshell encrypt.user.password
syn keyword baanBshell verify.user.password
syn keyword baanBshell asm.put.instance.id
syn match   baanBshell "\<date.to.inputstr\$"
syn keyword baanBshell inputstr.to.date
syn match   baanBshell "\<hostname\$"
syn keyword baanBshell base64.encode
syn keyword baanBshell base64.decode
syn keyword baanBshell sha.create
syn keyword baanBshell sha.initialize
syn keyword baanBshell sha.add.data
syn keyword baanBshell sha.compute.output
syn keyword baanBshell sha.destroy
syn match   baanBshell "\<uuid.generate\$"
syn match   baanBshell "\<uuid.format\$"
syn keyword baanBshell resolve.labels.by.lookupkey
syn keyword baanBshell resolve.labels.by.codepair
syn keyword baanBshell lookupkey.hash
syn keyword baanBshell lookupkey.unhash
syn match   baanBshell "\<mb.long.to.str\$"
syn keyword baanBshell mb.width
syn match   baanBshell "\<mb.localename\$"
syn match   baanBshell "\<mb.tss.clean\$"
syn match   baanBshell "\<mb.ext.clean\$"
syn match   baanBshell "\<mb.import\$"
syn match   baanBshell "\<mb.export\$"
syn keyword baanBshell mb.import.raw
syn keyword baanBshell mb.export.raw
syn keyword baanBshell uni.import
syn keyword baanBshell uni.export
syn keyword baanBshell utf8.import
syn keyword baanBshell utf8.export
syn keyword baanBshell mb.strpos
syn keyword baanBshell mb.scrpos
syn keyword baanBshell mb.char
syn keyword baanBshell mb.type
syn match   baanBshell "\<mb.cast\$"
syn match   baanBshell "\<mb.cast.to.str\$"
syn keyword baanBshell mb.display
syn keyword baanBshell mb.isbidi
syn keyword baanBshell mb.isbidi.language
syn match   baanBshell "\<mb.rev\$"
syn keyword baanBshell mb.hasbidi
syn keyword baanBshell mb.kb.lang
syn keyword baanBshell mb.locale.info
syn keyword baanBshell mb.locale.enumerate
syn keyword baanBshell mb.nsets
syn keyword baanBshell mb.set.info
syn keyword baanBshell mb.char.info
syn keyword baanBshell key.compare
syn keyword baanBshell set.fields.default
syn keyword baanBshell table.round
syn keyword baanBshell halfadj
syn keyword baanBshell round
syn keyword baanBshell format.round
syn match   baanBshell "\<edit\$"
syn match   baanBshell "\<str\$"
syn keyword baanBshell lval
syn keyword baanBshell acos
syn keyword baanBshell asin
syn keyword baanBshell atan
syn keyword baanBshell atan2
syn keyword baanBshell cosh
syn keyword baanBshell sinh
syn keyword baanBshell tanh
syn keyword baanBshell log10
syn keyword baanBshell sqrt
syn keyword baanBshell lpow
syn keyword baanBshell random
syn keyword baanBshell srand
syn keyword baanBshell rnd.init
syn keyword baanBshell rnd.i
syn keyword baanBshell rnd.d
syn keyword baanBshell double.cmp
syn match   baanBshell "\<tab\$"
syn keyword baanBshell aux.open
syn keyword baanBshell aux.print
syn keyword baanBshell aux.close
syn keyword baanBshell refresh
syn keyword baanBshell cl.screen
syn match   baanBshell "\<delch\$"
syn match   baanBshell "\<deleteln\$"
syn match   baanBshell "\<insch\$"
syn match   baanBshell "\<insertln\$"
syn keyword baanBshell change.window
syn keyword baanBshell data.input
syn keyword baanBshell del.window
syn keyword baanBshell frame.window
syn keyword baanBshell new.window
syn keyword baanBshell window.size
syn keyword baanBshell move.window
syn keyword baanBshell resize.window
syn keyword baanBshell get.row
syn keyword baanBshell get.col
syn keyword baanBshell get.cp
syn keyword baanBshell map.window
syn keyword baanBshell unmap.window
syn keyword baanBshell set.bg.color
syn keyword baanBshell set.fg.color
syn keyword baanBshell no.scroll
syn keyword baanBshell scroll
syn keyword baanBshell cursor.on
syn keyword baanBshell cursor.off
syn keyword baanBshell sub.window
syn keyword baanBshell current.window
syn match   baanBshell "\<keyin\$"
syn keyword baanBshell dump.screen
syn keyword baanBshell first.window
syn keyword baanBshell last.window
syn keyword baanBshell free.window
syn keyword baanBshell #input
syn keyword baanBshell #output
syn keyword baanBshell wrebuild
syn keyword baanBshell select.event.input
syn keyword baanBshell next.event
syn keyword baanBshell peek.event
syn keyword baanBshell pending.events
syn keyword baanBshell send.event
syn keyword baanBshell send.signal
syn keyword baanBshell get.display.data
syn keyword baanBshell open.display
syn keyword baanBshell link.display
syn keyword baanBshell link.keyboard
syn keyword baanBshell unlink.keyboard
syn keyword baanBshell close.display
syn keyword baanBshell current.display
syn keyword baanBshell change.display
syn keyword baanBshell sync.display.server
syn match   baanBshell "\<get.class.name\$"
syn keyword baanBshell create.mwindow
syn keyword baanBshell current.mwindow
syn keyword baanBshell change.mwindow
syn keyword baanBshell set.mwindow.title
syn keyword baanBshell set.mwindow.size
syn keyword baanBshell set.mwindow.mode
syn keyword baanBshell get.mwindow.mode
syn keyword baanBshell destroy.mwindow
syn keyword baanBshell dialog
syn keyword baanBshell get.mwindow.size
syn keyword baanBshell create.bar
syn keyword baanBshell current.bar
syn keyword baanBshell change.bar
syn keyword baanBshell change.bar.attr
syn keyword baanBshell destroy.bar
syn keyword baanBshell create.bar.button
syn keyword baanBshell change.bar.item.attr
syn keyword baanBshell destroy.bar.item
syn keyword baanBshell create.object
syn keyword baanBshell change.object
syn keyword baanBshell get.object
syn keyword baanBshell query.object
syn keyword baanBshell destroy.object
syn keyword baanBshell get.event.attribute
syn keyword baanBshell create.sub.object
syn keyword baanBshell create.sub.object.by.id
syn keyword baanBshell change.sub.object
syn keyword baanBshell get.sub.object
syn keyword baanBshell query.sub.object
syn keyword baanBshell destroy.sub.object
syn keyword baanBshell create.arglist
syn keyword baanBshell add.arg
syn keyword baanBshell add.ref.arg
syn keyword baanBshell delete.arg
syn keyword baanBshell print.arglist
syn keyword baanBshell destroy.arglist
syn keyword baanBshell get.object.class.list
syn keyword baanBshell get.object.class
syn keyword baanBshell get.sub.object.class
syn keyword baanBshell get.resource.class
syn keyword baanBshell get.event.class
syn keyword baanBshell get.pixmap.info
syn keyword baanBshell compress.pixmap
syn keyword baanBshell decompress.pixmap
syn keyword baanBshell get.window.attrs
syn keyword baanBshell get.mwindow.attrs
syn keyword baanBshell create.gc
syn keyword baanBshell change.gc
syn keyword baanBshell get.gc
syn keyword baanBshell destroy.gc
syn keyword baanBshell load.font
syn keyword baanBshell query.font
syn keyword baanBshell free.font
syn keyword baanBshell get.typeface
syn keyword baanBshell list.fonts
syn keyword baanBshell text.extends
syn keyword baanBshell inherit.object
syn keyword baanBshell create.gtext
syn keyword baanBshell create.line
syn keyword baanBshell create.polyline
syn keyword baanBshell create.polygon
syn keyword baanBshell create.rectangle
syn keyword baanBshell create.arc
syn keyword baanBshell create.pie
syn keyword baanBshell create.composite
syn keyword baanBshell create.image
syn keyword baanBshell change.gtext
syn keyword baanBshell change.gtext.label
syn keyword baanBshell change.line
syn keyword baanBshell change.polyline
syn keyword baanBshell change.polygon
syn keyword baanBshell change.rectangle
syn keyword baanBshell change.arc
syn keyword baanBshell change.pie
syn keyword baanBshell get.gtext
syn keyword baanBshell get.gtext.label
syn keyword baanBshell get.line
syn keyword baanBshell get.polyline
syn keyword baanBshell get.polygon
syn keyword baanBshell get.rectangle
syn keyword baanBshell get.arc
syn keyword baanBshell get.pie
syn keyword baanBshell get.composite
syn keyword baanBshell get.image
syn keyword baanBshell move.gpart
syn keyword baanBshell shift.gpart
syn keyword baanBshell which.gpart
syn keyword baanBshell which.gparts
syn keyword baanBshell change.gpart.gc
syn keyword baanBshell get.gpart.gc
syn keyword baanBshell destroy.gpart
syn keyword baanBshell destroy.composite
syn keyword baanBshell first.gpart
syn keyword baanBshell last.gpart
syn keyword baanBshell next.gpart
syn keyword baanBshell prev.gpart
syn keyword baanBshell change.gpart.attr
syn keyword baanBshell get.gpart.attr
syn keyword baanBshell get.gpart
syn keyword baanBshell get.gpart.box
syn keyword baanBshell resize.gpart.box
syn keyword baanBshell move.gpart.box
syn keyword baanBshell activate
syn keyword baanBshell reactivate
syn keyword baanBshell act.and.sleep
syn keyword baanBshell sleep
syn match   baanBshell "\<receive.bucket\$"
syn keyword baanBshell send.bucket
syn keyword baanBshell send.wait
syn keyword baanBshell bms.send
syn match   baanBshell "\<bms.receive\$"
syn keyword baanBshell bms.receive.buffer
syn keyword baanBshell bms.add.mask
syn keyword baanBshell bms.delete.mask
syn keyword baanBshell bms.init
syn keyword baanBshell wait.and.activate
syn keyword baanBshell abort
syn keyword baanBshell kill
syn keyword baanBshell shell
syn match   baanBshell "\<argv\$"
syn keyword baanBshell argc
syn keyword baanBshell get.var
syn keyword baanBshell put.var
syn keyword baanBshell get.ref.var
syn keyword baanBshell put.ref.var
syn keyword baanBshell get.indexed.var
syn keyword baanBshell put.indexed.var
syn keyword baanBshell on.change.check
syn keyword baanBshell off.change.check
syn keyword baanBshell changed
syn keyword baanBshell not.curr
syn keyword baanBshell handle.report.pool
syn keyword baanBshell get.symbol
syn keyword baanBshell suspend
syn keyword baanBshell set.timer
syn keyword baanBshell set.alarm
syn keyword baanBshell kill.timer
syn keyword baanBshell pstat
syn keyword baanBshell oipstat
syn keyword baanBshell obj_in_core
syn keyword baanBshell renice
syn keyword baanBshell kill.pgrp
syn keyword baanBshell set.pgrp
syn keyword baanBshell get.pgrp
syn keyword baanBshell grab.mwindow
syn keyword baanBshell signal
syn keyword baanBshell ptrace
syn keyword baanBshell link.on.stack
syn match   baanBshell "\<zoom.to\$"
syn keyword baanBshell retry.point
syn keyword baanBshell jump.retry.point
syn keyword baanBshell retry.level
syn keyword baanBshell get.bw.hostname
syn keyword baanBshell exit
syn match   baanBshell "\<dte\$"
syn keyword baanBshell times.on
syn keyword baanBshell times.off
syn keyword baanBshell times.close
syn keyword baanBshell times.total
syn keyword baanBshell times.lines
syn keyword baanBshell date.num
syn keyword baanBshell time.num
syn keyword baanBshell date.time.utc
syn keyword baanBshell utc.to.local
syn keyword baanBshell local.to.utc
syn keyword baanBshell input.field
syn keyword baanBshell output.field
syn keyword baanBshell key.to.option
syn keyword baanBshell option.to.key
syn keyword baanBshell get.choice.data
syn keyword baanBshell reset.zoom.info
syn keyword baanBshell next.field
syn keyword baanBshell print.form
syn keyword baanBshell set.field.blank
syn keyword baanBshell read.form
syn keyword baanBshell read.fast.form
syn keyword baanBshell change.form.field
syn keyword baanBshell copy.form.field
syn keyword baanBshell delete.form.field
syn keyword baanBshell iget.field.attr
syn keyword baanBshell sget.field.attr
syn keyword baanBshell menu.control
syn keyword baanBshell wait
syn match baanBshell "\<bms.peek\$"
syn keyword baanBshell create.menu
syn keyword baanBshell refresh.bar.menu
syn keyword baanBshell load.menu
syn keyword baanBshell current.menu
syn keyword baanBshell change.menu
syn keyword baanBshell popup.menu
syn keyword baanBshell set.menu
syn keyword baanBshell change.menu.attr
syn keyword baanBshell destroy.menu
syn keyword baanBshell create.menu.button
syn keyword baanBshell create.cascade.button
syn keyword baanBshell change.menu.item.name
syn keyword baanBshell change.cascade.menu
syn keyword baanBshell change.menu.item.attr
syn keyword baanBshell get.cascade.menu
syn keyword baanBshell destroy.menu.item
syn keyword baanBshell form.control
syn match   baanBshell "\<form.text\$"
syn keyword baanBshell status.on
syn keyword baanBshell status.off
syn keyword baanBshell status.mess
syn keyword baanBshell status.field
syn match   baanBshell "\<enum.descr\$"
syn keyword baanBshell mark.occurrence
syn keyword baanBshell start.mark
syn keyword baanBshell end.mark
syn keyword baanBshell get.attrs
syn keyword baanBshell put.attrs
syn keyword baanBshell act.zoom
syn keyword baanBshell init.first
syn keyword baanBshell init.last
syn keyword baanBshell init.next
syn keyword baanBshell init.prev
syn keyword baanBshell set.max
syn keyword baanBshell set.min
syn keyword baanBshell set.fmax
syn keyword baanBshell set.fmin
syn keyword baanBshell print.const
syn keyword baanBshell is.option.on
syn keyword baanBshell brp.build
syn keyword baanBshell brp.field
syn keyword baanBshell pathname
syn keyword baanBshell file.stat
syn keyword baanBshell file.cp
syn keyword baanBshell file.mv
syn keyword baanBshell file.rm
syn keyword baanBshell file.chown
syn keyword baanBshell file.chmod
syn keyword baanBshell stat.info
syn keyword baanBshell disk.info
syn keyword baanBshell mkdir
syn keyword baanBshell rmdir
syn keyword baanBshell open.message
syn keyword baanBshell send.message
syn keyword baanBshell recv.message
syn keyword baanBshell close.message
syn keyword baanBshell store.byte
syn keyword baanBshell store.short
syn keyword baanBshell store.long
syn keyword baanBshell store.float
syn keyword baanBshell store.double
syn keyword baanBshell load.byte
syn keyword baanBshell load.short
syn keyword baanBshell load.long
syn keyword baanBshell load.float
syn keyword baanBshell load.double
syn keyword baanBshell bit.and
syn keyword baanBshell bit.or
syn keyword baanBshell bit.exor
syn keyword baanBshell bit.inv
syn keyword baanBshell bit.in
syn keyword baanBshell bit.shiftl
syn keyword baanBshell bit.shiftr
syn keyword baanBshell check.domain
syn keyword baanBshell check.all.domain
syn keyword baanBshell seq.clearerr
syn keyword baanBshell seq.eof
syn keyword baanBshell seq.error
syn keyword baanBshell seq.open
syn keyword baanBshell seq.close
syn keyword baanBshell seq.flush
syn keyword baanBshell seq.rewind
syn keyword baanBshell seq.tell
syn keyword baanBshell seq.read
syn keyword baanBshell seq.write
syn match   baanBshell "\<seq.getc\$"
syn match   baanBshell "\<seq.putc\$"
syn match   baanBshell "\<seq.ungetc\$"
syn keyword baanBshell seq.skip
syn keyword baanBshell seq.seek
syn keyword baanBshell seq.gets
syn keyword baanBshell seq.puts
syn keyword baanBshell seq.unlink
syn keyword baanBshell seq.spool.line
syn keyword baanBshell seq.r.long
syn keyword baanBshell seq.w.long
syn keyword baanBshell seq.r.short
syn keyword baanBshell seq.w.short
syn keyword baanBshell seq.lock
syn keyword baanBshell seq.unlock
syn keyword baanBshell seq.islocked
syn keyword baanBshell pipe.open
syn keyword baanBshell pipe.close
syn keyword baanBshell pipe.flush
syn keyword baanBshell pipe.gets
syn keyword baanBshell pipe.puts
syn keyword baanBshell pipe.read
syn keyword baanBshell pipe.write
syn keyword baanBshell pipe.clearerr
syn keyword baanBshell pipe.eof
syn keyword baanBshell pipe.error
syn keyword baanBshell sock.connect
syn keyword baanBshell sock.listen
syn keyword baanBshell sock.accept
syn keyword baanBshell sock.recv
syn keyword baanBshell sock.send
syn keyword baanBshell sock.flush
syn keyword baanBshell sock.close
syn keyword baanBshell sock.inherit
syn keyword baanBshell sock.clearerr
syn keyword baanBshell sock.eof
syn keyword baanBshell sock.error
syn keyword baanBshell get.system.info
syn keyword baanBshell get.db.count
syn keyword baanBshell get.db.system.info
syn keyword baanBshell path.is.absolute
syn keyword baanBshell make.path.absolute
syn keyword baanBshell fstat.info
syn keyword baanBshell dir.open
syn keyword baanBshell dir.open.tree
syn keyword baanBshell dir.close
syn keyword baanBshell dir.entry
syn keyword baanBshell dir.rewind
syn keyword baanBshell ims.clearerr
syn keyword baanBshell ims.eof
syn keyword baanBshell ims.error
syn keyword baanBshell ims.close
syn keyword baanBshell ims.flush
syn keyword baanBshell ims.rewind
syn keyword baanBshell ims.tell
syn keyword baanBshell ims.read
syn keyword baanBshell ims.write
syn match   baanBshell "\<ims.getc\$"
syn match   baanBshell "\<ims.putc\$"
syn keyword baanBshell ims.skip
syn keyword baanBshell ims.seek
syn keyword baanBshell ims.gets
syn keyword baanBshell ims.puts
syn keyword baanBshell ims.spool.line
syn keyword baanBshell ims.r.long
syn keyword baanBshell ims.w.long
syn keyword baanBshell ims.r.short
syn keyword baanBshell ims.w.short
syn keyword baanBshell ims.openfba
syn keyword baanBshell ims.openvba
syn keyword baanBshell ims.getproperties
syn keyword baanBshell ims.setvbaproperties
syn keyword baanBshell db.get.physical.compnr
syn keyword baanBshell db.bind
syn keyword baanBshell db.unbind
syn keyword baanBshell db.error
syn keyword baanBshell db.error.message
syn keyword baanBshell db.detail.error
syn keyword baanBshell db.first
syn keyword baanBshell db.last
syn keyword baanBshell db.next
syn keyword baanBshell db.prev
syn keyword baanBshell db.gt
syn keyword baanBshell db.ge
syn keyword baanBshell db.eq
syn keyword baanBshell db.curr
syn keyword baanBshell db.lt
syn keyword baanBshell db.le
syn keyword baanBshell db.delete
syn keyword baanBshell db.insert
syn keyword baanBshell db.update
syn keyword baanBshell db.check.row.changed
syn keyword baanBshell db.check.row.domains
syn keyword baanBshell db.check.restricted
syn keyword baanBshell db.ref.handle.mode
syn keyword baanBshell db.set.to.default
syn keyword baanBshell db.create.index
syn keyword baanBshell db.drop.index
syn keyword baanBshell db.change.order
syn keyword baanBshell db.create.table
syn keyword baanBshell db.clear.table
syn keyword baanBshell db.drop.table
syn keyword baanBshell db.lock.table
syn keyword baanBshell db.table.begin.import
syn keyword baanBshell db.table.end.import
syn keyword baanBshell db.table.update.statistics
syn keyword baanBshell db.indexinfo
syn keyword baanBshell db.nr.indices
syn keyword baanBshell db.nr.rows
syn keyword baanBshell db.row.length
syn keyword baanBshell db.transaction.is.on
syn keyword baanBshell commit.transaction
syn keyword baanBshell set.transaction.readonly
syn keyword baanBshell abort.transaction
syn keyword baanBshell db.record.to.columns
syn keyword baanBshell db.columns.to.record
syn keyword baanBshell db.schedule
syn keyword baanBshell db.permission
syn keyword baanBshell db.set.notransaction
syn keyword baanBshell db.set.transaction
syn keyword baanBshell db.set.child.transaction
syn keyword baanBshell get.db.permission
syn keyword baanBshell get.session.permission
syn keyword baanBshell ams.control
syn keyword baanBshell db.get.old.row
syn keyword baanBshell db.max.retry
syn keyword baanBshell sql.parse
syn keyword baanBshell sql.select.bind
syn keyword baanBshell sql.where.bind
syn keyword baanBshell sql.bind.input
syn keyword baanBshell sql.exec
syn keyword baanBshell sql.fetch
syn keyword baanBshell sql.break
syn keyword baanBshell sql.close
syn keyword baanBshell sql.error
syn keyword baanBshell sql.set.rds.full
syn keyword baanBshell rdi.table
syn keyword baanBshell rdi.index
syn keyword baanBshell rdi.column
syn keyword baanBshell rdi.table.column
syn keyword baanBshell rdi.reference
syn keyword baanBshell rdi.column.combined
syn keyword baanBshell rdi.domain
syn keyword baanBshell rdi.domain.long
syn keyword baanBshell rdi.domain.double
syn keyword baanBshell rdi.domain.string
syn keyword baanBshell rdi.domain.raw
syn keyword baanBshell rdi.domain.enum
syn keyword baanBshell rdi.domain.enum.value
syn keyword baanBshell rdi.domain.combined
syn keyword baanBshell rdi.session.info
syn keyword baanBshell rdi.session.dlls
syn keyword baanBshell rdi.ref.route
syn keyword baanBshell rdi.session.subject.info
syn keyword baanBshell rdi.session.subject
syn keyword baanBshell rdi.session.key
syn keyword baanBshell rdi.session.form
syn keyword baanBshell rdi.session.textfield
syn keyword baanBshell rdi.first.day.of.week
syn match   baanBshell "\<rdi.date.input.format\$"
syn keyword baanBshell rdi.format.digits
syn keyword baanBshell rdi.permission
syn keyword baanBshell rdi.option.info
syn keyword baanBshell rdi.option.short
syn keyword baanBshell rdi.vrc.path
syn keyword baanBshell rdi.audit.hosts
syn keyword baanBshell rdi.table.sequence
syn keyword baanBshell iget.fld.attr
syn keyword baanBshell sget.fld.attr
syn keyword baanBshell iget.frm.attr
syn keyword baanBshell sget.frm.attr
syn keyword baanBshell iput.fld.attr
syn keyword baanBshell sput.fld.attr
syn keyword baanBshell iput.frm.attr
syn keyword baanBshell put.var.to.field
syn keyword baanBshell get.var.from.field
syn match   baanBshell "\<rdi.etoc\$"
syn keyword baanBshell rdi.ctoe
syn keyword baanBshell get.cust.code
syn keyword baanBshell get.lic.no
syn keyword baanBshell get.cust.name
syn keyword baanBshell get.mach.id
syn keyword baanBshell fsum
syn match   baanBshell "\<get.resource\$"
syn keyword baanBshell qss.sort
syn keyword baanBshell qss.search
syn keyword baanBshell load_dll
syn keyword baanBshell exec_dll_function
syn keyword baanBshell get_function
syn keyword baanBshell exec_function
syn keyword baanBshell parse_and_exec_function
syn keyword baanBshell pty.open
syn keyword baanBshell pty.close
syn keyword baanBshell pty.read
syn keyword baanBshell pty.write
syn keyword baanBshell pty.winsize
syn keyword baanBshell pty.winsize.ok
syn keyword baanBshell pty.ok
syn keyword baanBshell user.exists
syn keyword baanBshell group.exists
syn keyword baanBshell is.administrator
syn keyword baanBshell mtime
syn keyword baanBshell getcwd
syn keyword baanBshell set.strip.mode
syn keyword baanBshell set.symbol.strip.mode
syn keyword baanBshell nullify.symbol
syn keyword baanBshell bshell.pid
syn keyword baanBshell create.new.symbol
syn keyword baanBshell push.by.name
syn keyword baanBshell array.info
syn keyword baanBshell array.to.string
syn keyword baanBshell many.to.string
syn keyword baanBshell ostype
syn keyword baanBshell utc.num
syn keyword baanBshell set.time.zone
syn keyword baanBshell get.time.zone
syn keyword baanBshell run.prog
syn keyword baanBshell run.baan.prog
syn keyword baanBshell get.status.text
syn keyword baanBshell dir.is.available
syn keyword baanBshell dir.set.server
syn keyword baanBshell dir.get.last.error
syn keyword baanBshell dir.init.object
syn keyword baanBshell dir.free.object
syn keyword baanBshell dir.clear.object
syn keyword baanBshell dir.create.object
syn keyword baanBshell dir.get.object
syn keyword baanBshell dir.remove.object
syn keyword baanBshell dir.update.object
syn keyword baanBshell dir.init.search
syn keyword baanBshell dir.free.search
syn keyword baanBshell dir.execute.search
syn keyword baanBshell dir.abandon.search
syn keyword baanBshell dir.get.first.row
syn keyword baanBshell dir.get.next.row
syn keyword baanBshell dir.get.prev.row
syn keyword baanBshell dir.get.element.count
syn keyword baanBshell dir.get.element.name
syn keyword baanBshell dir.get.element.type
syn keyword baanBshell dir.get.value.count
syn keyword baanBshell dir.add.element
syn keyword baanBshell dir.add.element.int
syn keyword baanBshell dir.add.element.str
syn keyword baanBshell dir.add.element.time
syn keyword baanBshell dir.get.value.int
syn keyword baanBshell dir.get.value.str
syn keyword baanBshell dir.get.value.time
syn keyword baanBshell dir.get.value.named.str
syn keyword baanBshell dir.set.value.int
syn keyword baanBshell dir.set.value.str
syn keyword baanBshell dir.set.value.time
syn keyword baanBshell dir.set.value.named.str
syn keyword baanBshell dir.remove.element
syn keyword baanBshell dir.find.element
syn keyword baanBshell utc.add
syn keyword baanBshell type.define
syn keyword baanBshell type.free
syn keyword baanBshell type.get.fieldnumber
syn keyword baanBshell container.create
syn keyword baanBshell container.clear
syn keyword baanBshell container.resize
syn keyword baanBshell container.set.nfields
syn keyword baanBshell container.set.ifields
syn keyword baanBshell container.set.fields
syn keyword baanBshell container.get.nfields
syn keyword baanBshell container.get.ifields
syn keyword baanBshell container.get.fields
syn keyword baanBshell container.actual.size
syn keyword baanBshell container.get.actual.size
syn keyword baanBshell container.set.actual.size
syn keyword baanBshell container.size
syn keyword baanBshell container.free
syn keyword baanBshell xma.process_next_event
syn keyword baanBshell xma.init_instance
syn keyword baanBshell fini.service
syn keyword baanBshell corba.boa.process_next_event
syn keyword baanBshell corba.boa.set_impl
syn keyword baanBshell corba.available
syn keyword baanBshell corba.orb.string_to_object
syn keyword baanBshell corba.orb.release
syn keyword baanBshell corba.request.invoke
syn keyword baanBshell corba.request.send
syn keyword baanBshell corba.request.get_response
syn keyword baanBshell corba.request.object
syn keyword baanBshell corba.request.delete
syn keyword baanBshell set.debug.cpu.opts
syn keyword baanBshell get.debug.cpu.opts
syn match   baanBshell "\<bsh.mesg\$"
syn keyword baanBshell toggle.cpu
syn keyword baanBshell cpu.is.debug
syn keyword baanBshell set.profprint
syn keyword baanBshell art.init
syn keyword baanBshell art.define.transaction.class
syn keyword baanBshell art.begin.transaction
syn keyword baanBshell art.update.transaction
syn keyword baanBshell art.end.transaction
syn keyword baanBshell java.new.queue
syn keyword baanBshell java.destroy.queue
syn keyword baanBshell java.install.listener
syn keyword baanBshell java.uninstall.listener
syn keyword baanBshell java.put.bucket
syn keyword baanBshell java.get.bucket
syn keyword baanBshell java.lookup.queue
syn keyword baanBshell java.execute.static.method
syn keyword baanBshell java.execute.static.method.sync
syn keyword baanBshell java.execute.static.method.async
syn keyword baanBshell xml.write
syn keyword baanBshell xml.read
syn keyword baanBshell xml.newnode
syn keyword baanBshell xml.unlinknode
syn keyword baanBshell xml.deletenode
syn keyword baanBshell xml.appendchildnode
syn keyword baanBshell xml.addnode
syn keyword baanBshell xml.insertnode
syn keyword baanBshell xml.duplicatenode
syn keyword baanBshell xml.setnodeproperties
syn keyword baanBshell xml.getnodeproperties
syn keyword baanBshell xml.deletenodeproperties
syn keyword baanBshell xml.findfirstnode
syn keyword baanBshell xml.findnodes
syn keyword baanBshell xml.findsetofsiblingnodes
syn keyword baanBshell xmlcontainsvalidcharactersonly
syn keyword baanBshell xmlwrite
syn keyword baanBshell xmlwritepretty
syn keyword baanBshell xmlwritetostring
syn keyword baanBshell xmlwriteprettytostring
syn keyword baanBshell xmlread
syn keyword baanBshell xmlreadfromstring
syn keyword baanBshell xmlnewnode
syn keyword baanBshell xmlnewdataelement
syn keyword baanBshell xmlrewritedataelement
syn keyword baanBshell xmlgetdataelement
syn keyword baanBshell xmlsetname
syn keyword baanBshell xmlsetdata
syn keyword baanBshell xmlsetattribute
syn keyword baanBshell xmldeleteattribute
syn keyword baanBshell xmlgetname
syn keyword baanBshell xmlgetdata
syn keyword baanBshell xmlgettype
syn keyword baanBshell xmlgetparent
syn keyword baanBshell xmlgetfirstchild
syn keyword baanBshell xmlgetlastchild
syn keyword baanBshell xmlgetrightsibling
syn keyword baanBshell xmlgetleftsibling
syn keyword baanBshell xmlgetnumattributes
syn keyword baanBshell xmlgetnumsiblings
syn keyword baanBshell xmlgetnumleftsiblings
syn keyword baanBshell xmlgetnumrightsiblings
syn keyword baanBshell xmlgetnumchilds
syn keyword baanBshell xmlgetattribute
syn keyword baanBshell xmlgetattributename
syn keyword baanBshell xmldelete
syn keyword baanBshell xmlunlink
syn keyword baanBshell xmlinsert
syn keyword baanBshell xmladd
syn keyword baanBshell xmlappend
syn keyword baanBshell xmlinsertinchilds
syn keyword baanBshell xmlappendtochilds
syn keyword baanBshell xmlduplicate
syn keyword baanBshell xmlduplicateandinsert
syn keyword baanBshell xmlduplicateandadd
syn keyword baanBshell xmlduplicateandappend
syn keyword baanBshell xmlduplicateandinsertinchilds
syn keyword baanBshell xmlduplicateandappendtochilds
syn keyword baanBshell xmlduplicatetoprocess
syn keyword baanBshell xmlfindfirst
syn keyword baanBshell xmlfindfirstmatch
syn keyword baanBshell xmlfindmatch
syn keyword baanBshell xmlfindnodes
syn keyword baanBshell xmlfindsetofsiblingnodes
syn keyword baanBshell xmlexecutesql
syn keyword baanBshell xmlexecutedllmethod
syn keyword baanBshell xmldllsignature
syn keyword baanBshell xmlnodetosymbol
syn keyword baanBshell xmlputstringtolog
syn keyword baanBshell xmlgetlog
syn keyword baanBshell xmlcleanuplog
syn keyword baanBshell xmlinstallloglistener
syn keyword baanBshell xmldeinstallloglistener
syn keyword baanBshell xmlinitsql
syn keyword baanBshell xmlrefreshsqlcache
syn keyword baanBshell xmlstatisticssqlcache
syn keyword baanBshell bclm.dump
syn keyword baanBshell bclm.init
syn keyword baanBshell bclm.requestlicense
syn keyword baanBshell bclm.confirmlicense
syn keyword baanBshell bclm.releaselicense
syn keyword baanBshell bclm.customerdata
syn keyword baanBshell bclm.enabledemoperiod
syn keyword baanBshell bclm.productidlicensed
syn keyword baanBshell bclm.set.desktop

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_baan_syn_inits")
  if version < 508
    let did_baan_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink baanConditional	Conditional
  HiLink baan3gl		Statement
  HiLink baan3glpre		PreProc
  HiLink baan4gl		Statement
  HiLink baan4glh		Statement
  HiLink baansql		Statement
  HiLink baansqlh		Statement
  HiLink baanDalHook		Statement
  HiLink baanNumber		Number
  HiLink baanString		String
  HiLink baanOpenStringError	Error
  HiLink baanConstant		Constant
  HiLink baanComment		Comment
  HiLink baanCommenth		Comment
  HiLink baanUncommented	Comment
  HiLink baanDLLUsage		Comment
  HiLink baanFunUsage		Comment
  HiLink baanIdentifier		Normal
  HiLink baanBshell		Function
  HiLink baanType		Type
  HiLink baanStorageClass	StorageClass

  delcommand HiLink
endif

let b:current_syntax = "baan"

" vim: ts=8
