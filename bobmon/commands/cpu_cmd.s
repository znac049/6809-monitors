;
; Simple 6809 Monitor
;
; Copyright(c) 2016-2024, Bob Green <bob@chippers.org.uk>
;
; cpu_cmd.s - implements the "Cpu" command, to determine the processor type,
;		6809 or 6309.
;

cpuMinArgs	equ	0
cpuMaxArgs	equ	0
cpuCommand	fcn	"cpu"
cpuHelp		fcn	TAB,"Detect CPU - 6809 or 6309"


*******************************************************************
* doCpu - called by the command processor when the "cpu" command is
*	entered.
*
* on entry: nothing:
*
*  trashes: potentially everything (the command processor asumes this)
*
*  returns: nothing
*
doCpu		leax	dc_testing_msg,pcr
		lbsr	putStr

		pshs	d
		fdb	$1043		; 6309 COMD instruction (COMA on 6809)
		cmpb	1,s		; ne if 6309
		bne	dc6309

; It's a 6809
		leax	dc_6809_msg,pcr
		lbsr	putStr
		bra	dcDone

; It's a 6309
dc6309		leax	dc_6309_msg,pcr
		lbsr	putStr

		lbra	dcDone

; Detect if running in Native or Emulation mode
;
; Fake an ISR stack
		leax	dcRTI,pcr
		tfr	s,u	; Save the stack pointer

		pshs	x	; The return address from the pseudo ISR
		pshs	x	; Need it twice as what gets pulled at RTI depends on mode
		ldx	#0
		ldy	#1
		pshs	cc,a,b,dp,x,y	; Simulate an emulation mode ISR stack
		rti

; on RTI Y will contain:
;	Emulation mode: 1
;	Native mode:0
;
dcRTI		tfr	u,s	; That's the stack cleaned up
		tfr	y,d
		tstd
		beq	dcNative

		leax	dc_emulation_msg,pcr
		lbsr	putStr
		bra	dcDone

dcNative	leax	dc_native_msg,pcr
		lbsr	putStr

dcDone		rts

dc_testing_msg	fcn	"Checking CPU type...",CR,LF
dc_6809_msg	fcn	CR,LF,'6809 detected',CR,LF
dc_6309_msg	fcn	CR,LF,'6309 detected',CR,LF
dc_emulation_msg
		fcn	'Running in 6809 emulation mode',CR,LF
dc_native_msg	fcn	'Running in native 6309 mode',CR,LF
