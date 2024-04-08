
%%
%cup
%line
%column

inteiro = 0|[1-9][0-9]*
%%

{inteiro} {
     int aux = Integer.parseInt(yytext());
     return new Symbol(sym.INTEIRO, yyline, yycolumn, new Integer(aux));
}

"+" {return new Symbol(sym.MAIS);}

"-" {return new Symbol(sym.MENOS);}

"*" {return new Symbol(sym.MULT);}

"/" {return new Symbol(sym.DIV);}

";" {return new Symbol(sym.PTVIRG);}

.|\r|\n|\r\n {
     return new Symbol(sym.EOF, yyline, yycolumn, yytext());
}