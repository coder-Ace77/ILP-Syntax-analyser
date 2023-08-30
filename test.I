%{
#include <stdio.h>
%}

DIGIT     [0-9]
ALPHA     [a-zA-Z]
ALPHANUM  [a-zA-Z0-9]
SYMBOLS [!@#$%^&*()_+|~=`{}\[\]:";'<>?,./]
%%

"//"       {printf("Comment \n");while (input() != '\n' || input!='EOF');}
"/*"([^*]|"*"[^/])*"*/" { printf("Multiline Comment\n"); }
{DIGIT}*"."{DIGIT}+ { printf("Literal_float\n"); }
{DIGIT}+  { printf("Literal_number\n"); }
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
"if"              {printf("Token_if\n");}
"fn"               {printf("Token_function\n");}
"else if"              {printf("Token_else_if\n");}
"else"              {printf("Token_else\n");}
"switch"              {printf("Token_switch\n");}
"while"              {printf("Token_while\n");}
"for"              {printf("Token_for\n");}

"as"            {printf("Token_as\n");}
"break"         {printf("Token_break\n");}
"continue"      {printf("Token_continue\n");}
"const"        {printf("Token_const\n");}
"return"        {printf("Token_return\n");}
"mut"           {printf("Token_mut\n");}
"crate"         {printf("Token_crate\n");}
"enum"          {printf("Token_enum\n");}
"extern"        {printf("Token_extern\n");} 
"impl"          {printf("Token_impl\n");}
"false"         {printf("Token_false\n");}
"true"          {printf("Token_true\n");}
"in"            {printf("Token_in\n");}
"loop"          {printf("Token_loop\n");}
"self"          {printf("Token_self_value\n");}
"Self"          {printf("Token_self_type\n");}
"static"        {printf("Token_static\n");}
"type"          {printf("Token_type\n");}
"use"           {printf("Token_use\n");}
"where"         {printf("Token_where\n");}
"async"         {printf("Token_async\n");}
"await"         {printf("Token_await\n");}
"dyn"           {printf("Token_dyn\n");}

"let"            {printf("Token_let\n");}
"i8"           {printf("Token_Integer8\n");}
"i16"           {printf("Token_Integer16\n");}
"i32"           {printf("Token_Integer32\n");}
"i64"           {printf("Token_Integer64\n");}
"i128"           {printf("Token_Integer128\n");}

"u8"           {printf("Token_UnSigned_Integer8\n");}
"u16"           {printf("Token_UnSigned_Integer16\n");}
"u32"           {printf("Token_UnSigned_Integer32\n");}
"u64"           {printf("Token_UnSigned_Integer64\n");}
"u128"           {printf("Token_UnSigned_Integer128\n");}

"f32"           {printf("Token_Float32\n");}
"f64"           {printf("Token_Float64\n");}

"bool"          {printf("Token_Bool\n");}
"char"          {printf("Token_char\n");}
"tup"           {printf("Token_Tuple\n");}

";"             {printf("Statement_terminator\n");}
"{"             {printf("Token_Open_Brace\n");}
"}"             {printf("Token_Close_Brace\n");}
"("             {printf("Token_Open_Parenthesis\n");}
")"             {printf("Token_Close_Parenthesis\n");}
"["             {printf("Token_Open_Bracket\n");}
"]"             {printf("Token_Close_Bracket\n");}
","             {printf("Token_Comma\n");}
":"             {printf("Token_Colon\n");}


{ALPHA}{ALPHANUM}*   { printf("Identifier: %s\n", yytext); }
.          { printf("Unknown: %s\n", yytext); }
\n         { /* Ignore newline characters */ }
%% 

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}
