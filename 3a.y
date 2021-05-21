%{
#include <stdio.h>
#include <stdlib.h>
int c=0;
%}
 
%token FOR LPAREN RPAREN LF RF EXP SPACE NUM




%%
S:I;
I:FOR A B {c++;};

A:LPAREN E';'E';'E RPAREN;
E: EXP O NUM|EXP O EXP|EXP U|SPACE| ;

O:'='|'>'|'<'|'<''='|'>''='|'=''+'|'=''-';

U:'+''+'|'-''-';

B: LF B RF|I|EXP|EXP SPACE I| ;

%%
 
int main() {
    printf("Enter the code\n");
    yyparse();
    printf("Count of for is %d\n",c);
return 1;
}
 
int yyerror() {
    printf("Invalid\n");
    exit(0);
}


