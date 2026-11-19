;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;SMSUBB -- GWMON-80 Small Monitor for PT Subsystem B
;
;This customization uses a Processor Tech 3P+S strapped up
;for Subsystem B compatibility for the console. The serial
;channel is used for both keyboard and display. Bitrate is
;assumed to be statically jumpered -- if you have your 3P+S
;configured for software switchable bitrate, you'll need to
;set it up with a custom CSTART routine.
;
;The monitor is ORGed with the expectation that it will be
;ROMed.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Processor Tech Subsystem B Equates
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
MONROM	equ	0F800H		;Address GWMON-80 will be ROMed at
SYSRAM	equ	0F800H		;Top of system RAM
STACK	equ	SYSRAM		;Stack at top of system RAM

	ORG	MONROM

	INCLUDE	'vectors.inc'	;Standard GWMON-80 jump table

	INCLUDE	'sm.inc'	;The small monitor
	INCLUDE	'scmdstd.inc'	;SM standard commands
	INCLUDE 'scmdnull.inc'	;Command table terminator

	INCLUDE 'subsysb.inc'	;PT 3P+S in Subsystem B configuration

	END
