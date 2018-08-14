/* Written on 14th August, 2018 @NIT DGP by Ramswaroop Soren(16/CS/8061) */
/* Program to count the words of length greater than 10 */

%{
	int count = 0;
	int chars = 0;
%}

%%

[a-zA-Z]+ {chars=0; chars += strlen(yytext); if(chars>10){count++;} }

%%

int main(){
	yylex();
	printf("Words having length more than 10 : %d \n",count);
	return 0;
}