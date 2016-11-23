%{

var Tree = require('/Users/durgaman/IdeaProjects/jison/jison-Assignments/assignment01/Tree.js')
var NumberNode = require('/Users/durgaman/IdeaProjects/jison/jison-Assignments/assignment01/NumberNode.js')
var Root = require('/Users/durgaman/IdeaProjects/jison/jison-Assignments/assignment01/RootNode.js')

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
        {return $$; }
    ;

e
    : e '+' e
        {$$= new Tree($1,new Root($2),$3);}
    | e '-' e
        {$$= new Tree($1,new Root($2),$3);}
    | e '*' e
        {$$= new Tree($1,new Root($2),$3);}
    | NUMBER
        {$$ = new NumberNode(yytext)}
    | VARIABLE
    ;
