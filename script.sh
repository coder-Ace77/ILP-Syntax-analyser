#!/bin/bash

lex $1
gcc lex.yy.c -o lex.yy
./lex.yy
