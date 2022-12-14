%{

%}

%%
0?[xX]?[a-fA-F0-9]+ printf("Numero Hexadecimal");
[g-zG-Z0-9]+ printf("Nao e Hexadecimal");
%%

int yywrap(){}

int main(){

yylex();

return 0;

}