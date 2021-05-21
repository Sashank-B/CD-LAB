%{
#include<stdio.h>
int l=0,w=0,c=0,whi=0;
%}
%%
\n l++;
[ ] {whi++;c++;}
([a-zA-Z0-9]*) {w++;c=c+yyleng;}
%%
int main()
{
printf("Enter the string\n");
yylex();
printf("words are=%d, characters are=%d, lines are=%d, whitespaces are=%d",w,c,l,whi);
}
