#!/bin/bash

lex lexAnalyser.I
gcc lex.yy.c -o lex.yy
./lex.yy
