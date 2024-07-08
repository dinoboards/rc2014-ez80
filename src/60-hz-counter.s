
        INCLUDE ".\config.inc"

	SEGMENT	CODE

	.ASSUME ADL=1

	PUBLIC	ms_60Hz_timer_counter_isr

ms_60Hz_timer_counter_isr:
	PUSH	AF
	PUSH	HL

	IN0    A, (TMR1_CTL)			; clear interrupt signal

	LD	HL, HB_TICKS		; POINT TO TICK COUNTER
	CALL	INC32HL
	LD	HL, HB_SECTCK		; POINT TO SECONDS TICK COUNTER
	DEC	(HL)			; COUNTDOWN ONE SECOND OF TICKS
	JR	NZ, HB_TICK1		; NOT DONE, SKIP AHEAD
	LD	A, TICKFREQ		; TICKS PER SECOND
	LD	(HL), A			; RESET COUNTDOWN REGISTER
	LD	HL, HB_SECS		; POINT TO SECONDS COUNTER
	CALL	INC32HL			; INCREMENT AND RETURN

HB_TICK1:
	POP	HL
	POP	AF
	EI
	RETI.L


	PUBLIC	timer_tick_control

timer_tick_control:
	POP	BC		; restore bc and hl
	POP	HL

	LD	A, B		; SUB FUNCTION CODE
	OR	A		; TEST SUB FUNCTION CODE
	JR	Z, tm_tick_get	; B = 0, get ticks
	DEC	A
	JR	Z, tmr_secs_get	; B = 1, get secs
	DEC	A
	JR	Z, tmr_tick_set	; B = 2, set ticks
	DEC	A
	JR	Z, tmr_secs_set	; B = 3, set secs

	XOR	A		; SUCCESS
	RET.L


; GET TIMER TICKS
;   RETURNS:
;     DE{15:0}:HL{15:0}: TIMER VALUE (32 BIT)
;     C TICKFREQ (60)
;
tm_tick_get:
	LD	HL, HB_TICKS
	DI
	CALL	LD32
	EI
	LD	C, TICKFREQ
	XOR	A		; SUCCESS
	RET.L
;
; GET TIMER SECONDS
;   RETURNS:
;     DE:HL: SECONDS VALUE (32 BIT)
;     C: NUM TICKS WITHIN CURRENT SECOND
;
tmr_secs_get:
	LD	HL, HB_SECS
	DI
	CALL	LD32
	LD	A, (HB_SECTCK)
	EI
	NEG			; CONVERT DOWNCOUNTER TO UPCOUNTER
	ADD	A, TICKFREQ
	LD	C, A
	XOR	A		; SUCCESS
	RET.L
;
; SET TIMER
;   ON ENTRY:
;     DE{15:0}:HL{15:0}: TIMER VALUE (32 BIT)
;
tmr_tick_set:
	LD	BC, HB_TICKS
	DI
	CALL	ST32
	EI
	XOR	A		; SUCCESS
	RET.L

;
; SET SECS
;   ON ENTRY:
;     DE:HL: SECONDS VALUE (32 BIT)
;
tmr_secs_set:
	LD	BC, HB_SECS
	DI
	CALL	ST32
	EI
	XOR	A
	RET.L
;
; INC32 (HL)
; INCREMENT 32 BIT BINARY AT ADDRESS
;
INC32HL:
	INC	(HL)
	RET	NZ
	INC	HL
	INC	(HL)
	RET	NZ
	INC	HL
	INC	(HL)
	RET	NZ
	INC	HL
	INC	(HL)
	RET

; LOAD OR STORE DE:HL
;
LD32:
	; LD DE:HL, (HL)
	PUSH	AF
	LD	E, (HL)
	INC	HL
	LD	D, (HL)
	INC	HL
	LD	A, (HL)
	INC	HL
	LD	H, (HL)
	LD	L, A
	POP	AF
	EX	DE, HL
	RET

ST32:
	; LD (BC),DE{15:0}:HL{15:0}
	PUSH	AF
	LD	A,L
	LD	(BC),A
	INC	BC
	LD	A,H
	LD	(BC),A
	INC	BC
	LD	A,E
	LD	(BC),A
	INC	BC
	LD	A,D
	LD	(BC),A
	POP	AF
	RET

	SEGMENT	BSS

	PUBLIC	HB_SECTCK

HB_TICKS:
	DS	4

HB_SECTCK:
	DS	1	; TICK COUNTER FOR FRACTIONAL SECONDS

HB_SECS:
	DS	4

	END
