%{
#include "y.tab.h"
#undef yywrap
#define yywrap() 1
extern yylval;
%}
%%
[0-9]+ {yylval = atoi(yytext); return NUM; }
[-] return '-';
[+] return '+';
[*] return '*';
[/] return '/';
. return yytext[0];
\n return 0;
%%

