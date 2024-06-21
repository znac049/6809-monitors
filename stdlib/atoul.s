* 6809 assembly program generated by cmoc 0.1.86


	SECTION	code


___va_arg	IMPORT
_abs	IMPORT
_adddww	IMPORT
_atoi	IMPORT
_atol	IMPORT
_atoui	IMPORT
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
_atoul	EXPORT


*******************************************************************************

* FUNCTION atoul(): defined at atoul.c:9
_atoul	EQU	*
* Calling convention: Default
	PSHS	U
	LEAU	,S
	LEAS	-6,S
* Formal parameter(s):
*      6,U:    2 bytes: nptr: const char *: line 9
* Local non-static variable(s):
*     -6,U:    2 bytes: endptr: char *: line 11
*     -4,U:    4 bytes: $V00078: unsigned long: line 12
* Line atoul.c:12: function call: strtoul()
	CLRA
	LDB	#$0A		decimal 10 signed
	PSHS	B,A		argument 3 of strtoul(): int
	LEAX	-6,U		variable `endptr', declared at atoul.c:11
* optim: optimizePshsOps
	LDD	6,U		variable `nptr', declared at atoul.c:9
	PSHS	X,B,A		optim: optimizePshsOps
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
* END FUNCTION atoul(): defined at atoul.c:9
funcend_atoul	EQU *
funcsize_atoul	EQU	funcend_atoul-_atoul


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
