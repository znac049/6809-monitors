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
_strtol	EXPORT


*******************************************************************************

* FUNCTION strtol(): defined at strtol.c:9
_strtol	EQU	*
* Calling convention: Default
	PSHS	U
	LEAU	,S
	LEAS	-8,S
* Formal parameter(s):
*      6,U:    2 bytes: nptr: const char *: line 9
*      8,U:    2 bytes: endptr: char **: line 9
*     10,U:    2 bytes: base: int: line 9
* Local non-static variable(s):
*     -8,U:    4 bytes: $V00078: long: line 11
*     -4,U:    4 bytes: $V00079: unsigned long: line 11
* Line strtol.c:11: function call: strtoul()
	LDY	10,U		optim: transformPshsXPshsX
* optim: optimizePshsOps
	LDX	8,U		optim: transformPshsDPshsD
* optim: optimizePshsOps
	LDD	6,U		variable `nptr', declared at strtol.c:9
	PSHS	Y,X,B,A		optim: optimizePshsOps
	LEAX	-4,U		address of struct/union to be returned by strtoul()
	PSHS	X		hidden argument
	LBSR	_strtoul
	LEAS	8,S
	LEAX	-4,U		address of struct/union returned by strtoul()
	LDD	4,U		address of return value
	LBSR	copyDWordFromXToD
* optim: branchToNextLocation
* Useless label L00077 removed
	LEAS	,U
	PULS	U,PC
* END FUNCTION strtol(): defined at strtol.c:9
funcend_strtol	EQU *
funcsize_strtol	EQU	funcend_strtol-_strtol


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

* Importing 2 utility routine(s).
_strtoul	IMPORT
copyDWordFromXToD	IMPORT


*******************************************************************************

	END
