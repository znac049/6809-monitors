* 6809 assembly program generated by cmoc 0.1.86


	SECTION	code


___va_arg	IMPORT
_abs	IMPORT
_adddww	IMPORT
_atoi	IMPORT
_atol	IMPORT
_atoui	IMPORT
_atoul	IMPORT
_bsearch	IMPORT
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
_strcspn	EXPORT


*******************************************************************************

* FUNCTION strcspn(): defined at strcspn.c:5
_strcspn	EQU	*
* Calling convention: Default
	PSHS	U
	LEAU	,S
	LEAS	-2,S
* Formal parameter(s):
*      4,U:    2 bytes: s: const char *: line 5
*      6,U:    2 bytes: reject: const char *: line 5
* Local non-static variable(s):
*     -2,U:    2 bytes: counter: unsigned int: line 7
* Line strcspn.c:7: init of variable counter
	CLRA
	CLRB
	STD	-2,U		variable counter
* Line strcspn.c:8: while
	BRA	L00079		jump to while condition
L00078	EQU	*		while body
* Line strcspn.c:10: if
	CLRA
	CLRB
* Emitted no code to cast `int' to `void *'
	PSHS	B,A
* Line strcspn.c:10: function call: strchr()
	LDB	[4,U]		indirection
	SEX			promoting byte argument to word
	PSHS	B,A		argument 2 of strchr(): const char
	LDD	6,U		variable `reject', declared at strcspn.c:5
	PSHS	B,A		argument 1 of strchr(): const char *
	LBSR	_strchr
	LEAS	4,S
	CMPD	,S++
	BEQ	L00082		 (optim: condBranchOverUncondBranch)
* optim: condBranchOverUncondBranch
* Useless label L00081 removed
* Line strcspn.c:11
* Line strcspn.c:11: return with value
	LDD	-2,U		variable `counter', declared at strcspn.c:7
	BRA	L00077		return (strcspn.c:11)
L00082	EQU	*		else clause of if() started at strcspn.c:10
* Useless label L00083 removed
* Line strcspn.c:12: pre-increment
	LDX	-2,U		variable `counter', declared at strcspn.c:12
	LEAX	1,X
	STX	-2,U
* Line strcspn.c:13: pre-increment
	LDX	4,U		variable `s', declared at strcspn.c:13
	LEAX	1,X
	STX	4,U
L00079	EQU	*		while condition at strcspn.c:8
	LDB	[4,U]		indirection
* optim: loadCmpZeroBeqOrBne
	BNE	L00078
* optim: branchToNextLocation
* Useless label L00080 removed
* Line strcspn.c:15: return with value
	LDD	-2,U		variable `counter', declared at strcspn.c:7
* optim: branchToNextLocation
L00077	EQU	*		end of strcspn()
	LEAS	,U
	PULS	U,PC
* END FUNCTION strcspn(): defined at strcspn.c:5
funcend_strcspn	EQU *
funcsize_strcspn	EQU	funcend_strcspn-_strcspn


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
_strchr	IMPORT


*******************************************************************************

	END
