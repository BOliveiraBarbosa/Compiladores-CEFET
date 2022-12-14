%{
/* Definition section */
#include<stdio.h>
int flag=0;
%}

%token NUMBER

%left '+' '-'

%left '*' '/' '%'

%left '(' ')'

/* Rule Section */
%%

ArithmeticExpression: E{

		printf("\nResult = %d\n", $$);

		return 0;

		};
E:E'+'E {$$=$1+$3;}

|E'-'E {$$=$1-$3;}

|E'*'E {$$=$1*$3;}

|E'/'E {$$=$1/$3;}

|E'%'E {$$=$1%$3;}

|'('E')' {$$=$2;}

| NUMBER {$$=$1;}

;

%%

//driver code
void main()
{
printf("\n~~Calculadora Hexadecimal~~\n\n");
printf("Digite qualquer expressão aritmética que pode ter operações Adição, Subtração, Multiplicação, Divisão\n");
printf("Com número na base 16 (Hexadecimal)\n\n");

yyparse();
if(flag==0)
printf("\nA expressão aritmética inserida é válida\n\n");
}

void yyerror()
{
printf("\nA expressão aritmética inserida é inválida\n\n");
flag=1;
}
