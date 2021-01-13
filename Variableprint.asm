include irvine32.inc
Title test question 2
.data
firstname	db	"Andrey",0
lastname	db	"Ilkiv",0
prompt1		db	"Your Lastname Is: ",0
.code
 main proc
	call showLname
	call crlf
	call dumpregs
	exit
;-----------------------------------
showLname proc
	Lname:
		mov edx,offset prompt1
		call writestring
		mov edx,offset lastname
		call writestring
		ret
	showLname endp
 main endp
 end main


Your Lastname Is: Ilkiv

  EAX=76963368  EBX=7EFDE000  ECX=00000000  EDX=00404007
  ESI=00000000  EDI=00000000  EBP=0018FF94  ESP=0018FF8C
  EIP=0040102B  EFL=00000202  CF=0  SF=0  ZF=0  OF=0