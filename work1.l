
Header "#include<stdio.h>"|"#include<bits/stdc++.h>"
Start "main()"
Brc1 [()]
Brc2 [{}]
Brc3 [[]]
Integer "int"
Bool "bool"
Float "float"
String "string"
Character "char"
If "if"
Else "else"
Elif "elseif"
Cut "break"
Resume "continue"
Back "return"
Back0 "return 0"
Digit [0-9]
Letter [a-zA-Z]
Plus "+"
Minus "-"
Into "*"
Divide "/"
Mod "%"
Equal "=="
Assign "="
GreaterThan ">"
Greater_equal ">="
LessThan "<"
Lesser_equal ">="
And_operator "&&"
Or_operator "||"
Not_oprator "!"
For_Loop ("for")("(")
While_Loop ("while")("(")
Take "&"{Letter}+{Digit}*
Write "printf"
Read "scanf"



%{

%}

%%
"Header" {printf("Valid header\n");}
"Start" {printf("This is Main Function\n");}
("(") {printf("First Open Braces\n");}
(")") {printf("First Close Braces\n");}
("{") {printf("Second Open Braces\n");}
("}") {printf("Second Close Braces\n");}
("[") {printf("Third Open Braces\n");}
("]") {printf("Third Close Braces\n");}
"Integer" {printf("Integer type\n");}
"Bool" {printf("Boolean type \n");}
"Float" {printf("Float type\n");}
"String" {printf("String type\n");}
"Character" {printf("Character type\n");}
"If" {printf("If condition\n");}
"Else" {printf("Else condition\n");}
"Elif" {printf("Else if condition\n");}
"Cut" {printf("Break statement\n");}
"Resume" {printf("Continue\n");}
"Back" {printf("Return\n");}
"Back0" {printf("Return 0\n");}
"Digit"+ {printf("Positive Digit\n");}
[-]{Digit}+ {printf("Negative Digit\n");}

"Plus" {printf("Addition\n");}
"Minus" {printf("Subtraction\n");}
"Into" {printf("Multiplication\n");}
"Divide" {printf("Division\n");}
"Mod" {printf("MOdulation\n");}
"Equal" {printf("Equal to\n");}
"Assign" {printf("Assignment\n");}
"GreaterThan" {printf("Greater than operator\n");}
"Greater_equal" {printf("Greater than or equal\n");}
"LessThan" {printf("less than operator\n");}
"Lesser_equal" {printf("less than or equal\n");}
"And_operator" {printf("And\n");}
"Or_operator" {printf("Or\n");}
"Not_oprator" {printf("Not\n");}
"For_Loop" {printf("For loop\n");}
"While_Loop" {printf("While loop\n");}

"Write" {printf("Print a line\n");}
"Read" {printf("Take a input\n");}

{Letter}+{Digit}* {printf("Variable\n");}

["].*["] {printf("This is a sentence\n");}



%%

int yywrap()
{
     return 1;
}

int main()
{
        yyin = freopen( "input.txt", "r",stdin);
	yyout = freopen("output.txt", "w",stdout);
	yylex();
	fclose(yyin);
	fclose(yyout);
}