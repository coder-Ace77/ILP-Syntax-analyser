%{
#include <stdio.h>
%}

DIGIT     [0-9]
ALPHA     [a-zA-Z]
ALPHANUM  [a-zA-Z0-9]
SYMBOLS [!@#$%^&*()_+|~=`{}\[\]:";'<>?,./]
%%

"//"       {printf("Comment detected %s\n",yytext);while (input() != '\n');}
"/*".*"*/"       {printf("Multiline Comment detected\n");}
{DIGIT}*"."{DIGIT}+ { printf("Literal_float\n"); }
"'"{ALPHA}"'"       {printf("Literal_char\n");}
"\"".*"\""      {printf("Literal_string\n");}
"++"             {printf("Operator_increment\n");}
"--"             {printf("Operator_decrement\n");}
"<="             {printf("Operator_less_or_equal\n");}
">="             {printf("Operator_greater_or_equal\n");}
"=="             {printf("Operator_equal\n");}
"!="             {printf("Operator_not_equal\n");}
"&&"             {printf("Operator_logical_AND\n");}
"||"             {printf("Operator_logical_OR\n");}
"**"             {printf("Operator_exponentia\n");}
"?"              {printf("Operator_ternary_operator\n");}
"+="             {printf("Operator_assignment_addition\n");}
"-="             {printf("Operator_assignment_subtraction\n");}
"/="             {printf("Operator_assignment_division\n");}
"*="             {printf("Operator_assignment_multiplication\n");}
"+"              {printf("Operator_addition\n");}
"-"              {printf("Operator_subtraction\n");}
"*"              {printf("Operator_multiplication\n");}
"/"              {printf("Operator_division\n");}
"%"              {printf("Operator_modulo\n");}
">"              {printf("Operator_greater\n than");}
"<"              {printf("Operator_lesser\n than");}
"="              {printf("Operator_assignment\n");}
"!"              {printf("Operator_logical_NOT\n");}
"^"              {printf("Operator_logical_XOR\n");}
"."              {printf("Operator_separator\n");}
{DIGIT}+{ALPHA}+  { printf("Unknown %s\n", yytext); }
{DIGIT}+  { printf("Number: %s\n", yytext); }
{ALPHA}{ALPHANUM}*   { printf("Identifier: %s\n", yytext); }
.          { printf("Unknown: %s\n", yytext); }
\n         { /* Ignore newline characters */ }
%% 


int yywrap() {}
int main() {
    yylex();
    return 0;
}
