* 6809 assembly program generated by cmoc 0.1.86


	SECTION	code


__FinishIntegerToASCII	IMPORT
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
_strtol	IMPORT
_strtoul	IMPORT
_strupr	IMPORT
_subdww	IMPORT
_tolower	IMPORT
_toupper	IMPORT
_utoa10	IMPORT
_vprintf	IMPORT
_vsprintf	IMPORT
_zerodw	IMPORT
_ultoa10	EXPORT


*******************************************************************************

* FUNCTION ultoa10(): defined at ultoa.c:16
_ultoa10	EQU	*
* Calling convention: Default
	PSHS	U
	LEAU	,S
	LEAS	-12,S
* Formal parameter(s):
*      4,U:    4 bytes: value: unsigned long: line 16
*      8,U:    2 bytes: str: char *: line 16
* Local non-static variable(s):
*    -12,U:    2 bytes: writer: char *: line 25
*    -10,U:    2 bytes: firstDigit: char *: line 28
*     -8,U:    8 bytes: results: unsigned long[]: line 38
* Line ultoa.c:18: if
	LEAX	4,U		variable `value', declared at ultoa.c:16
	LBSR	isDWordZero
	BNE	L00080		 (optim: condBranchOverUncondBranch)
* optim: condBranchOverUncondBranch
* Useless label L00079 removed
* Line ultoa.c:19
* Line ultoa.c:20: assignment: =
* LDB #$30 optim: optimizeStackOperations1
* PSHS B optim: optimizeStackOperations1
* optim: optimizeLdx
	LDB	#48		optim: optimizeStackOperations1
	STB	[8,U]		optim: optimizeLdx
* Line ultoa.c:21: assignment: =
* CLRB  optim: optimizeStackOperations1
* PSHS B optim: optimizeStackOperations1
	LDX	8,U		get pointer value
* optim: optimizeLeax
	LDB	#0		optim: optimizeStackOperations1
	STB	1,X		optim: optimizeLeax
* Line ultoa.c:22: return with value
	LDD	8,U		variable `str', declared at ultoa.c:16
	LBRA	L00078		return (ultoa.c:22)
L00080	EQU	*		else clause of if() started at ultoa.c:18
* Useless label L00081 removed
* Line ultoa.c:25: init of variable writer
	LDD	8,U		variable `str', declared at ultoa.c:16
	STD	-12,U		variable writer
* Line ultoa.c:28: init of variable firstDigit
* optim: storeLoad
	STD	-10,U		variable firstDigit
* Line ultoa.c:40: inline assembly
* Inline assembly:


DIV32 IMPORT
        bra @whileValueNotZero
@whileBody
        pshs y,u ; save CMOC globals pointer and frame pointer
        leax 4,U ; dividend
        leay -8,U ; 8-byte destination buffer
        leau _ten32Bits+0,PCR
; Cannot refer to locals now that U is changed.
        lbsr DIV32 ; divide *X by *U
; 0,Y = quotient
; 4,Y = remainder (0..9), i.e., 7,Y = 0..9 b/c 6809 is big endian
        leax ,y ; stop using Y
        puls u,y ; restore CMOC pointers: can refer to globals and locals again
; Copy quotient to 'value'.
        ldd ,x
        std 4,U
        ldd 2,x
        std 6,U
; Write digit to 'writer'.
        ldb 7,x ; remainder (0..9)
        addb #'0' ; convert to ASCII digit
        ldx -12,U
        stb ,x+
        stx -12,U
@whileValueNotZero
        ldd 4,U ; check MSB of 'value'
        bne @whileBody
        ldd 6,U ; check LSB of 'value'
        bne @whileBody
    

* End of inline assembly.
* Line ultoa.c:73: return with value
* Line ultoa.c:73: function call: _FinishIntegerToASCII()
	LDD	8,U		variable `str', declared at ultoa.c:16
	PSHS	B,A		argument 3 of _FinishIntegerToASCII(): char *
	LDD	-12,U		variable `writer', declared at ultoa.c:25
	PSHS	B,A		argument 2 of _FinishIntegerToASCII(): char *
	LDD	-10,U		variable `firstDigit', declared at ultoa.c:28
	PSHS	B,A		argument 1 of _FinishIntegerToASCII(): char *
	LBSR	__FinishIntegerToASCII
	LEAS	6,S
* optim: branchToNextLocation
L00078	EQU	*		end of ultoa10()
	LEAS	,U
	PULS	U,PC
* END FUNCTION ultoa10(): defined at ultoa.c:16
funcend_ultoa10	EQU *
funcsize_ultoa10	EQU	funcend_ultoa10-_ultoa10


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
_ten32Bits	EQU	*		ten32Bits: const unsigned long: ultoa.c:12
	FCB	$00,$00,$00,$0A
.global.static.variable.ten32Bits	EQU	*


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
__FinishIntegerToASCII	IMPORT
isDWordZero	IMPORT


*******************************************************************************

	END