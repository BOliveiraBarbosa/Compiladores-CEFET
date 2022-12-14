/* Expressão Regular */

%{
/* Definition section */
#include<stdio.h>
#include "y.tab.h"
extern int yylval;
%}

/* Rule Section */
%%
/* Já vi números hexadecimais com 0xDAD = 0XDAD = DAD*/
0?[xX]?[a-fA-F0-9]+ {
        yylval = atoi(yytext);
        return NUMBER;

    }
[\t];

[\n] return 0;

. return yytext[0];

%%

int yywrap()
{
return 1;
}
