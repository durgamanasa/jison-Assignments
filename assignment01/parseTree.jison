%{

var path = require('path')

var Tree = require(path.resolve('./Tree.js'))
var NumberNode = require(path.resolve('./NumberNode.js'))
var Root = require(path.resolve('./RootNode.js'))

%}


%lex
%%

\s+       /* skip whitespace */
[0-9]+    return 'NUMBER'
'+'       return '+'
'-'       return '-'
'*'       return '*'
'a'       return 'VARIABLE'
<<EOF>>   return 'EOF'

/lex

%left '-'
%left '+'
%left '*'

%start expressions

%%

expressions
    : e EOF
        {console.log($$);return $$; }
    ;

e
    : e '+' e
        {$$= new Tree($1,new Root($2),$3);}
    | e '-' e
        {$$= new Tree($1,new Root($2),$3);}
    | e '*' e
        {$$= new Tree($1,new Root($2),$3);}
    | NUMBER
        {$$ = new NumberNode(Number(yytext))}
    | VARIABLE
    ;
