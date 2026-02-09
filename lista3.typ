#import "@preview/tablex:0.0.8": tablex

#set page(header: align(center + horizon)[
  #grid(
    columns:(.5fr, 1.87fr, 1fr),
    strong[Lista 3],
    [Análise na Reta],
    align(right)[SOLUÇÕES (Augusto G. Lima)],
  )
  #line(length: 100%)
])


#set page(paper: "us-letter", numbering: "1")
#set text(font:"New Computer Modern",size:10pt)
#set par(justify: true)
#show heading: set align(center)
#show heading: set text(size: 13pt, weight: "regular",)
#show heading: smallcaps


#let fim = {
  align(right)[
    #rect(width: 0.4em, height:1.2em, fill: gray)
  ]
}

#line(length : 100%)

*1:* Dizemos que um número real $a in (0,1]$ é _corda universal_ se, para toda função contínua $f: [0.1] -> RR$ tal que $f(0) = f(1)$, existem $x,y in [0.1]$ com $x-y =a$ tais que $f(x) = f(y)$.\
Determine todas as cordas universais.

#line(length : 100%)

#pagebreak()

#line(length : 100%)

*2:* Seja $I subset RR$ um intervalo aberto e $f: I -> RR$ uma função contínua tal que, para cada $x in I$ existe $f'_+(x)$ e $f'_+(x) > 0$. Prove que $f$ é estritamente crescente.

#line(length : 100%)

#pagebreak()

#line(length : 100%)

*3:* a) Prove que se $I$ é um intervalo aberto, $a in I$ e $f,g: I -> RR$ são funções deriváveis tais que $lim_(x->a)|f(x)| = lim_(x->a)|g(x)| = +infinity$ e existe o limite $L = lim_(x->a)(f'(x))/(g'(x))$ então $lim_(x->a) f(x)/g(x) = L.$\
b) Prove que se $f,g: RR -> RR$ são funções deriváveis tais que $lim_(x->+infinity)|f(x)| = lim_(x->+infinity)|g(x)| = 0$ e existe o limite $L = lim_(x->+infinity)(f'(x))/(g'(x))$ então $lim_(x->+infinity) f(x)/g(x) = L.$\
c) Prove que se $f,g: RR -> RR$ são funções deriváveis tais que $lim_(x->+infinity)|f(x)| = lim_(x->+infinity)|g(x)| = +infinity$ e existe o limite $L = lim_(x->+infinity)(f'(x))/(g'(x))$ então $lim_(x->+infinity) f(x)/g(x) = L.$\

#line(length : 100%)

#pagebreak()

#line(length : 100%)

*4:* Sejam $I subset RR$ um intervalo, $a in I$, $n in NN$ e $f: I -> RR$ uma função de classe $C^n$. Seja $theta: X := {h in RR|a+h in I} -> (0,1)$ uma função tal que, para todo $h in X$,
$ f(a+h) = f(a) + sum_(j=0)^(n-1) (f^((j))(a))/j!h^j+(f^((n))(a+theta(h) dot h))/n!h^n . $
a) Prove que, se $f$ é de classe $C^(n+1)$ e $f^((n+1))(a)!=0$, então $lim_(h -> 0)theta(h)=1/(n+1).$\
b) Suponha que $f$ é de classe $C^(n+2)$, $f^((n+1))(a)=0$ e $f^((n+2))(a)!=0$. Determine $lim_(h->0)theta(h)$.

#line(length : 100%)

#pagebreak()

#line(length : 100%)

*5:* Sejam $x_1,x_2,...,x_n > 0$ números reais. Para cada $k$ com $1<=k<=n$, definimos a $k$-ésima média simétrica d $x_1,x_2,...,x_n$ por
$ S_k(x_1,x_2,...,x_n) = root(k,sum_(1<=i_1<i_2<...<i_k<=n)x_(i_1)x_(i_2)...x_(i_k) slash binom(n,k)) . $
Prove que $S_1(x_1,...,x_n)>=S_2(x_1,...,x_n)>=...>=S_n (x_1,...,x_n)$, valendo  a igualdade em alguma dessas desigualdades se, e somente se, $x_1 = x_2 = ... = x_n$ .

#line(length : 100%)

#pagebreak()

#line(length : 100%)

*6:* Para cada $n>=0$, seja $I_n = integral_0^(pi slash 2) cos^n (x) d x$.\
a) Prove que, para todo $n>=2$, $I_n=(n-1)/n I_(n-2)$.\
b) Prove que, para todo $k>=0$,
$ I_(2k) = pi/2 dot ((2k)!)/(4^k k!^2) " e " I_(2k+1) = (4^k k!^2)/(2k+1)! . $
c) Prove que
$ pi/2 = product_(k=1)^infinity (2k)^2/((2k-1)(2k+1)) . $

#line(length : 100%)

#pagebreak()

#line(length : 100%)

*7:* a) Dados $a,b > 0$, seja $f(a,b) = integral_0^(pi slash 2) (d theta) / sqrt(a^2 cos^2(theta) + b^2 sin^2 (theta))$. Prove que $f(a,b)=f((a+b)/2, sqrt(a b))$, para quaisquer $a,b > 0$.\
b) Prove que a média aritmético-geométrica $m_(A G)(a,b)$ de $a$ e $b$ é dada por $pi/(2 f(a,b))$.

#line(length : 100%)