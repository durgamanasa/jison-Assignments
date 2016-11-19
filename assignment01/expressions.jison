%lex
%%

\s+       /* skip whitespace */
[0-9]+    return 'NUMBER'
'+'       return '+'
'-'       return '-'
'*'       return '*'
<<EOF>>   return 'EOF'

/lex

%left '-'
%left '+'
%left '*'

%start expressions

%%

expressions
    : e EOF
        { typeof console !== 'undefined' ? console.log($$) : print($$);
          return $$; }
    ;

e
    : e '+' e
        {$$=[$1,$2,$3];}
    | e '-' e
        {$$=[$1,$2,$3];}
    | e '*' e
        {$$=[$1,$2,$3];}
    | NUMBER
        {$$ = Number(yytext)}
    ;


