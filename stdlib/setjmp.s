* 6809 assembly program generated by cmoc 0.1.86


	SECTION	code


_setjmp	EXPORT


*******************************************************************************

* FUNCTION setjmp(): defined at setjmp.c:10
_setjmp	EQU	*
* Assembly-only function.
* Line setjmp.c:13: inline assembly
* Inline assembly:


        ldx 2,s ; point to 'env', a 6-byte array
        ldd ,s ; return address, to be jumped to by longjmp()
        std ,x

        tfr s,d
        addd #2 ; value of S before the LBSR/JSR to setjmp() (one word past the current return address)
        std 2,x

        stu 4,x

        clra
        clrb
    

* End of inline assembly.
* Useless label L00003 removed
	RTS
* END FUNCTION setjmp(): defined at setjmp.c:10
funcend_setjmp	EQU *
funcsize_setjmp	EQU	funcend_setjmp-_setjmp
_longjmp	EXPORT


*******************************************************************************

* FUNCTION longjmp(): defined at setjmp.c:31
_longjmp	EQU	*
* Assembly-only function.
* Line setjmp.c:34: inline assembly
* Inline assembly:


        ldd 2+2,s ; load 'value' before S points to original stack position
        bne @gotValue
        incb ; caller mistakenly passed 0 for value; return 1 (in D) instead
@gotValue
        ldx 2,s ; point to 'env'
        lds 2,x
        ldu 4,x
        jmp [,x] ; return to caller of setjmp() with 'value' in D
    

* End of inline assembly.
* Useless label L00004 removed
* END FUNCTION longjmp(): defined at setjmp.c:31
funcend_longjmp	EQU *
funcsize_longjmp	EQU	funcend_longjmp-_longjmp


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

* Importing 0 utility routine(s).


*******************************************************************************

	END
