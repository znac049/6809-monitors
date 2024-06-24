* 6809 assembly program generated by cmoc 0.1.86


	SECTION	code


___va_arg	IMPORT
_abs	IMPORT
_adddww	IMPORT
_atoi	IMPORT
_atol	IMPORT
_atoui	IMPORT
_atoul	IMPORT
_cmpdww	IMPORT
_delay	IMPORT
_divdwb	IMPORT
_divdww	IMPORT
_divmod16	IMPORT
_divmod8	IMPORT
_dwtoa	IMPORT
_enable_printf_float	IMPORT
_exit	IMPORT
_isalnum	IMPORT
_isalpha	IMPORT
_isdigit	IMPORT
_isspace	IMPORT
_itoa10	IMPORT
_labs	IMPORT
_ltoa10	IMPORT
_memchr	IMPORT
_memcmp	IMPORT
_memcpy	IMPORT
_memichr	IMPORT
_memicmp	IMPORT
_memmove	IMPORT
_memset	IMPORT
_memset16	IMPORT
_mulwb	IMPORT
_mulww	IMPORT
_printf	IMPORT
_putchar	IMPORT
_putstr	IMPORT
_qsort	IMPORT
_rand	IMPORT
_readline	IMPORT
_readword	IMPORT
_sbrk	IMPORT
_sbrkmax	IMPORT
_setConsoleOutHook	IMPORT
_set_null_ptr_handler	IMPORT
_set_stack_overflow_handler	IMPORT
_sprintf	IMPORT
_sqrt16	IMPORT
_sqrt32	IMPORT
_srand	IMPORT
_strcat	IMPORT
_strchr	IMPORT
_strcmp	IMPORT
_strcpy	IMPORT
_strcspn	IMPORT
_stricmp	IMPORT
_strlen	IMPORT
_strlwr	IMPORT
_strncmp	IMPORT
_strncpy	IMPORT
_strpbrk	IMPORT
_strrchr	IMPORT
_strspn	IMPORT
_strstr	IMPORT
_strtok	IMPORT
_strtol	IMPORT
_strtoul	IMPORT
_strupr	IMPORT
_subdww	IMPORT
_tolower	IMPORT
_toupper	IMPORT
_ultoa10	IMPORT
_utoa10	IMPORT
_vprintf	IMPORT
_vsprintf	IMPORT
_zerodw	IMPORT
_bsearch	EXPORT


*******************************************************************************

* FUNCTION bsearch(): defined at bsearch.c:5
_bsearch	EQU	*
* Calling convention: Default
	PSHS	U
	LEAU	,S
	LEAS	-4,S
* Formal parameter(s):
*      4,U:    2 bytes: key: const void *: line 5
*      6,U:    2 bytes: base: const void *: line 5
*      8,U:    2 bytes: nmemb: unsigned int: line 5
*     10,U:    2 bytes: size: unsigned int: line 5
*     12,U:    2 bytes: compar: int (*)(const void *, const void *): line 6
* Local non-static variable(s):
*     -4,U:    2 bytes: pivot: const void *: line 10
*     -2,U:    2 bytes: result: int: line 11
* Line bsearch.c:8: while
	BRA	L00079		jump to while condition
L00078	EQU	*		while body
* Line bsearch.c:10: init of variable pivot
	LDD	8,U		variable `nmemb', declared at bsearch.c:5
	LSRA
	RORB
	TFR	D,X		optim: stripExtraPulsX
	LDD	10,U		variable `size', declared at bsearch.c:5
* optim: stripExtraPulsX
	LBSR	MUL16
	ADDD	6,U		optim: pushDLoadAdd
* 
* 
	STD	-4,U		variable pivot
* Line bsearch.c:11: init of variable result
* Line bsearch.c:11: function call through pointer
* optim: storeLoad
	PSHS	B,A		argument 2: const void *
	LDD	4,U		variable `key', declared at bsearch.c:5
	PSHS	B,A		argument 1: const void *
	JSR	[12,U]		indirect call through variable `compar'
	LEAS	4,S
	STD	-2,U		variable result
* Line bsearch.c:12: if
* optim: storeLoad
* optim: loadCmpZeroBeqOrBne
	BNE	L00082		 (optim: condBranchOverUncondBranch)
* optim: condBranchOverUncondBranch
* Useless label L00081 removed
* Line bsearch.c:13
* Line bsearch.c:13: return with value
	LDD	-4,U		variable `pivot', declared at bsearch.c:10
* Emitted no code to cast `const void *' to `void *'
	BRA	L00077		return (bsearch.c:13)
L00082	EQU	*		else clause of if() started at bsearch.c:12
* Useless label L00083 removed
* Line bsearch.c:14: if
	LDD	-2,U		variable result
	ADDD	#0
	BLE	L00085		 (optim: condBranchOverUncondBranch)
* optim: condBranchOverUncondBranch
* Useless label L00084 removed
* Line bsearch.c:15
* Line bsearch.c:16: assignment: =
* optim: optimizeStackOperations4
* optim: optimizeStackOperations4
	LDD	-4,U		variable `pivot', declared at bsearch.c:10
	ADDD	10,U		optim: optimizeStackOperations4
	STD	6,U
* Line bsearch.c:17: pre-decrement
	LDX	8,U		variable `nmemb', declared at bsearch.c:17
	LEAX	-1,X
	STX	8,U
L00085	EQU	*		else clause of if() started at bsearch.c:14
* Useless label L00086 removed
* Line bsearch.c:19: assignment: >>=
	LEAX	8,U		variable `nmemb', declared at bsearch.c:5
	LDD	,X		get word to be shifted
	LSRA
	RORB
	STD	,X		store shifted word
L00079	EQU	*		while condition at bsearch.c:8
	LDD	8,U		variable nmemb
* optim: removeCMPZeroAfterLDIfBHI (BHI->BNE)
	BNE	L00078
* optim: branchToNextLocation
* Useless label L00080 removed
* Line bsearch.c:21: return with value
	CLRA
	CLRB
* Emitted no code to cast `int' to `void *'
* optim: branchToNextLocation
L00077	EQU	*		end of bsearch()
	LEAS	,U
	PULS	U,PC
* END FUNCTION bsearch(): defined at bsearch.c:5
funcend_bsearch	EQU *
funcsize_bsearch	EQU	funcend_bsearch-_bsearch


	ENDSECTION




	SECTION	initgl




*******************************************************************************

* Initialize global variables.


	ENDSECTION




	SECTION	rodata


string_literals_start	EQU	*
string_literals_end	EQU	*


*******************************************************************************

* READ-ONLY GLOBAL VARIABLES


	ENDSECTION




	SECTION	rwdata


* Statically-initialized global variables
* Statically-initialized local static variables


	ENDSECTION




	SECTION	bss


bss_start	EQU	*
* Uninitialized global variables
* Uninitialized local static variables
bss_end	EQU	*


	ENDSECTION




*******************************************************************************

* Importing 1 utility routine(s).
MUL16	IMPORT


*******************************************************************************

	END