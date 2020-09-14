/ adder.mas by Michael Rowe 26101267

/ This program takes input of two numbers from a user, adds them together
/ and displays the sum. Each number is stored in a variable.
/ It will then repeat this process until the user enters '!'.

	ORG	100		/load at memory position 100

loop,	LOAD	arrow		/Load the '>' char into AC
	OUTPUT			/Output the '>' char

	INPUT			/Gets input of the first digit as an ASCII char
	OUTPUT			/Outputs the user-inputted first digit as an ASCII char
	SUBT	num2ch		/Convert the ASCII char to it's respective decimal digit
	STORE x			/Stores the first decimal digit 

	LOAD	plus		/Load the '+' char into AC
	OUTPUT			/Output the '+' char

	INPUT			/Gets input of the second digit as an ASCII char
	OUTPUT			/Outputs the user-inputted second digit as an ASCII char
	SUBT	num2ch		/Convert the ASCII char to it's respective decimal digit
	STORE	y		/Stores the second decimal digit 

	LOAD	equals		/Load the '=' char into AC
	OUTPUT			/Output the '=' char

	LOAD	x		/Load the first decimal digit into the AC
	ADD	y		/Add the second decimal digit to the first decimal digit
	STORE	z		/Stores the sum of the two decimal digits added together
	ADD	num2ch		/Convert the sum in decimal to it's respective ASCII char
	OUTPUT			/Output the sum of the two decimal digits added together

	INPUT			/Gets input of an ASCII char from the user
	SUBT	excl		/Subtracts 33 from the AC due to '!' minus 33 being 0
	SKIPCOND	400	/Checks AC == 0 (only true if input was '!')
	JUMP	loop		/Only executes loop if AC != 0 (ie input wasn't '!')
	LOAD	bye1		/Loads 'B' into AC
	OUTPUT			/Outputs 'B'
	LOAD	bye2		/Loads 'Y' into AC
	OUTPUT			/Outputs 'Y'
	LOAD	bye3		/Loads 'E' into AC
	OUTPUT			/Outputs 'E'
	HALT			/Terminates program

arrow,	Dec	62		/The ASCII value of '>' char
num2ch,	Dec	48		/48 is the difference between ASCII & Dec digits
x,	Dec	0		/Holds the value of the first decimal digit for adding
plus,	Dec	43		/The ASCII value of '+' char
y,	Dec	0		/Holds the value of the second decimal digit for adding
equals,	Dec	61		/The ASCII value of '=' char
z,	Dec	0		/Holds the sum of the two decimal digits added together
excl,	Dec	33		/The ASCII value of '!' char
bye1,	Dec	66		/The ASCII value of 'B' char
bye2,	Dec	89		/The ASCII value of 'Y' char
bye3,	Dec	69		/The ASCII value of 'E' char