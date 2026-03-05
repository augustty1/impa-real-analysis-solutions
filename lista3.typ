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

#text(fill:red)[ *(Atenção):*] Os Teoremas e corolários aqui enunciados, quando for o caso, seguirão a numeração do texto: Curso de análise vol.1 12.ed. de Elon Lages Lima.

#line(length : 100%)

*1:* Dizemos que um número real $a in (0,1]$ é _corda universal_ se, para toda função contínua $f: [0,1] -> RR$ tal que $f(0) = f(1)$, existem $x,y in [0,1]$ com $x-y =a$ tais que $f(x) = f(y)$.\
Determine todas as cordas universais.

#line(length : 100%)

Seja $C$ o conjunto de cordas universais, a priori, nota-se que $1 in C$, já que $1-0 in (0,1]$ e $f(1)=f(0)$. Considera-se então a função $Delta:[0,1-a]-> RR, x mapsto f(x) - f(x+a)$, $a$ é corda universal se e somente se $Delta(a) = 0$.

*Lema 1.1.* $forall k in NN : forall y in NN inter [0,k] : f(0) - f(y/k)>0$, sob a hipótese de $Delta$ não ter raíz e $forall x in [0,1-a]:Delta(x) > 0$.\
Por indução em $y$, se é o caso $y=1$, segue de que $Delta(0)>0$. Seja a hipótese indutiva, verdadeiro para $1<y<k-1$, então $[f(0) - f(y/k)] + [f(y/k) - f((y+1)/k)] > 0 => f(0) - f((y+1)/k)>0 $.  

Considerando $k a + r = 1$, $k in NN$ e $0<=r<a$, por divisão em casos:\
(i) $r=0$\
Nesse caso $k = 1/a$. Afim de contradição, $[exists.not x in [0,1-a] : Delta(x)=0] => Delta(0) > 0 " ou " Delta(0)<0$. Sem perda de generalidade, assumindo $Delta(0)>0$.  Pelo (Teorema 12. §  7 - Teorema do Valor Intermediário), $forall x in [0,1-a]: Delta(x) > 0$. Em particular $forall x in ZZ inter [0,k-1]: f(x/k) - f((x+1)/k) > 0$, então, pelo _Lema 1.1._, $f(0) - f(y/k)>0$. Uma contradição com o caso $y=k => f(0) - f(1) > 0 $, logo $forall k in NN: 1/k in C$.

(ii) $0<r<a$\
Será exibido um contraexemplo. Seja $P = {t_0,...,t_(k+1)}$, uma partição do intervalo $[0,1]$ tal que $forall i in [0,k] inter NN : t_i = i a$ e $t_(k+1) = 1 = k a + r$. Seja $f:[0,a]->RR$ uma função contínua tal que $f(0)=1,f(a)=(k+1)/k$ e $f(r)=0$.\
Seja então $h:[0,1]->RR$ uma função, definida por partes para cada um dos subintervalos da partição onde $h:[t_i, t_(i+1)) -> RR, x mapsto f(x - i a) - (1 + (1-i)/k)$ e $h(1)=0$. Tem-se que $h$ é uma função contínua, porque é contínua em cada subintervalo e $forall t_i:i in [1,k] inter NN: lim_(x->t_i^-) h (x) = lim_(x->1) f(x - k a) - 1 + k/k = f(r) = 0 = h(1)$. Observando que $h(0) = h(1)$ e, se $x in [t_i, t_(i+1)]$ então $(x+a) in [t_(i+1), t_(i+2)]$ e\
$h(x) - h(x+a) = (f(x - i a) - 1 +i / k ) - (f(x + a - (i+1) a)-(1 + (i+1)/k)) = f(x- i a ) - f(x - i a) + i/ k + (1-i)/k = -1/k < 0$.\
Logo, não é o caso de que $a$ é corda universal.

Portanto, o conjunto de todas as cordas universais é determinado por $C = {1/n| n in NN}$.

#fim


#pagebreak()

#line(length : 100%)

*2:* Seja $I subset RR$ um intervalo aberto e $f: I -> RR$ uma função contínua tal que, para cada $x in I$ existe $f'_+(x)$ e $f'_+(x) > 0$. Prove que $f$ é estritamente crescente.

#line(length : 100%)

Afim de contradição, as hipóteses são verdadeiras mas $exists a,b in I : a < b and f(a)>= f(b)$. A função $f|_[a,b]$ é não somente contínua, mas definida em $[a,b]$, compacto, valendo o (Corolário do Teorema 14. § 7 - _Weierstrass_), então $f|_[a,b]$ é limitada e atinge seu máximo e mínimo.\
É possível dizer que sempre há um ponto de máximo de $f|_[a.b]$, $c in [a,b)$. Porque se $c=b$, $f(a)=f(b)$ também é máximo, se $c!=b$ então $c in [a,b)$.\
Tomando portanto $c in [a,b)$, um ponto de máximo no intervalo, decorre do (Teorema 4. § 8), que como $f|_[a,b]$ é derivável à direita no ponto $c in [a,b)$ e $f'_+(c) > 0$, então $exists delta >0: x in [a,b]:x in (c,c+delta ) => f(c) < f(x)$. Sendo $tilde(delta) = min{delta,b-c}$, ainda pelo teorema anterior, $x in (c,c+ tilde(delta))=>f(c) < f(x)$ com $x in(c,c+tilde(delta)) subset [a,b]$, contradição com a maximalidade de $f|_[a,b]$ no ponto $c$. Logo, $forall a,b in I: a<b => f(a) < f(b)$, a função $f:I -> RR$ é, por definição, estritamente crescente.

#fim


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

a) $ I_n = integral_0^(pi/2)cos^n (x) d x = integral_0^(pi/2) cos^(n-1) (x) dot (sin(x))' d x =^("(Teorema 11. § 9 - Integral por partes)")  \ cos^(n-1) (x) dot sin(x) bar_0^(pi/2) - integral_0^(pi/2) [ - sin(x)dot (n-1) cos^(n-2) (x)] dot sin(x) d x = \ 0 + integral_(0)^(pi/2) sin^2(x) dot (n-1) (cos^(n-2) (x)) d x = (n-1) integral_0^(pi / 2) (1 - cos^2(x))  dot (cos^(n-2) (x)) d x = \ (n-1) [integral_0^(pi / 2) cos^(n-2) (x) d x - integral_(0)^(pi/2) cos^n (x) d x ] = (n-1)(I_2 - I_n) => I_n = (n-1)/n I_2 . $

#fim

b) Por indução em $k in NN:$

i) Se $k = 0$

$ I_(2k) = I_0 = integral_0^(pi/2) d x = pi/2, $

$ I_(2k+1) = I_1 = integral_0^(pi/2) cos (x) d x = sin(pi / 2) - sin(0) = 1.  $

ii) Por hipótese, tem-se o que foi enunciado 

$ I_(2(k+1)) =^(a")") (2k+1)/(2k+2)I_(2k) =^("hip") pi/2 dot (2k+1)/(2k+2) dot ((2k)!)/(4^k k!^2) = pi / 2 dot ((2k+2)!)/(4^(k+1) (k+1)!^2), $

$ I_(2(k+1)+1) =^(a")") (2k+2)/(2k+3)I_(2k + 1) =^("hip") (2k + 2) / (2k + 3) dot (4^k k!^2)/((2k+1)!) = (4^k k!^2 (2k + 2)^2)/((2k + 1)!(2k + 2)(2 k + 3)) = (4^(k+1)(k + 1)!^2)/(2 k + 3)! . $

#fim 

c) *Lema 6.1.*  $ lim_(n->infinity) I_(n+1) / I_n = 1 $.\
$ [forall x in [0,pi/2] => 0<= cos(x) <= 1 => forall k in NN: 0<= cos^(k+1) (x) <= cos^k (x) ] => \ 

[integral_0^(pi/2) cos^(n+2) (x) <= integral_0^(pi/2) cos^(n+1) (x) d x <= integral_0^(pi/2) cos^n (x) d x => \ 1 - 1/(n+2) = (integral_0^(pi/2) cos^(n+2) (x) d x) / (integral_0^(pi/2) cos^n (x) d x) <= (integral_0^(pi / 2) cos^(n + 1) (x) d x) / ( integral_0^(pi / 2) cos^n (x) d x) = I_(n+1) / I_n <= (integral_0^(pi/2) cos^n (x) d x) / (cos^n (x) d x) = 1 ]\

$\
Pelo (Teorema 4. § 6 - Teorema do sanduíche  ) $lim_(n -> infinity)I_(n+1) / I_n = 1$.

*Lema 6.2.* $ product_(k=1)^n (2k)^2 / ((2 k - 1)(2 k + 1)) = pi/2 dot I_(2 n + 1) / I_(2 n) $.\
Por indução em $n in NN$:\
i) $ 2^2 / ((2-1)(2+1)) =^(b ")") pi/2 dot I_3 / I_2 $.\
ii) Por hipótese, vale a igualdade em $forall j in NN :1<=j<=n$,\
$ pi / 2 dot (I_(2 n + 3 )) / (I_(2 n  + 2)) = pi / 2 dot (I(2 n + 1)) / (I_(2 n)) dot (2 n + 2) / (2 n + 3) dot (2 n + 2) / (2 n + 1) =^("hip") \ (2 n  + 2)^2 / ((2 n + 1)(2 n + 3))  dot product_(k=1)^n (2 k)^2 / ((2 k - 1)(2 k + 1)) =   product_(k=1)^(n+1) (2 k)^2 / ((2 k - 1)(2 k + 1)) . $\

Finalmente,

$ lim_(n -> infinity) product_(k=1)^n (2k)^2 / ((2 k - 1)(2 k + 1)) =^("Lema 6.2.") \ lim_(n -> infinity) pi/ 2 dot I_(2 n + 1) / I_(2 n) =^("Lema 6.1.") \ pi / 2 =^("def") product_(k=1)^infinity (2 k)^2 / ((2 k - 1)(2 k + 1)) . $ 

#fim


#pagebreak()

#line(length : 100%)

*7:* a) Dados $a,b > 0$, seja $f(a,b) = integral_0^(pi slash 2) (d theta) / sqrt(a^2 cos^2(theta) + b^2 sin^2 (theta))$. Prove que $f(a,b)=f((a+b)/2, sqrt(a b))$, para quaisquer $a,b > 0$.\
b) Prove que a média aritmético-geométrica $m_(A G)(a,b)$ de $a$ e $b$ é dada por $pi/(2 f(a,b))$.

#line(length : 100%)

a) Considerando a mudança de variável
$ u = b tan(theta) => (d u)/(d theta) = b sec^2(theta) . $
Segue de $b^2 tan^2(theta)+b^2 = b^2 sec^2(theta)$, e onde $theta = 0 => b tan(theta) = 0 " e " lim_(theta -> pi/2^-) b tan(theta) = +infinity$, 
$ integral_0^(pi/2)(d theta)/(sqrt(a^2 cos^2(theta)+b^2 sin^2(theta))) = integral_0^(pi/2) (d theta) / ((cos^2(theta))/(b)dot sqrt(b^2 sec^2(theta)(a^2+b^2 tan^2(theta)))) = \ integral_0^(pi/2) (b sec^2(theta))/(sqrt(b^2(1+tan^2(theta))(a^2 + b^2 tan^2(theta)))) d theta = integral_0^(+infinity) (d u) / (sqrt((b^2 + u^2)(a^2 + x^2))) . $
Considere uma nova mudanças de variável 
$ v = (u^2 - a b) / (2 u ) => (d v)/(d u) = 1/ 2 + (a b) / (2 x^2) $
Observa-se que $((u^2 + a b)/(2 u))^2 = 1/4(u^2 + 2 a b + (a b)/u^2) = a b + 1/4 (u^2 + 2 a b + (a b)/u^2) = a b + [(1/2( u - (a b) / u ) ]^2 = a b + v^2$, com $lim_(x->0^+)(u^2 - a b)/u=-infinity " e " lim_(x->+infinity)(u^2 - a b)/u=+infinity$, então 
$ 
integral_0^(+infinity) (d u) / (sqrt((b^2 + u^2)(a^2 + u^2))) = integral_0^(+infinity) (d u) / (sqrt((b^2 + a^2)u^2 + u^4 + a^2b^2)) = \
integral_0^(+infinity) (d u)/(sqrt((b^2 + 2 a b + a^2)u^2 + u^4 - 2 a b u^2 + a^2b^2)) = integral_0^(+infinity) (d u )/(sqrt((b+a)^2u^2 + (u^2 - a b)^2)) = \ 1/2 dot integral_0^(+infinity) (d u)/(u sqrt(((b+a)/2)^2+1/4(u - (a b)/u)^2)) = 1/2 dot integral_0^(+ infinity) (1/ 2 (1 + (a b) / u^2)) / (1/2 (u + (a b)/u)sqrt(((b+a)/2)^2 + 1/4(u - (a b) / u)^2)) d u = \
1/2 dot integral_(- infinity)^(+ infinity) (d v) / (sqrt((v^2 + a b)(v^2 + ((b+a)/ 2)^2 ))) =>^("A função integrada é par") f(a,b) = f((a+b)/2,sqrt(a b)).
$
#fim

b) Pelo item a) e dada a sugestão enunciada, $forall i in NN: f(a,b) = f(x_i,y_i)$, onde  $(x_i)_(i in NN) " e " (y_i)_(i in NN)$ são sequências arbitrariamente próximas de $m_(A G)(a,b)$, então $f(x_n,y_n)$ é arbitrariamente próxima à $f(m_(A G)(a,b), m_(A G)(a,b))$ desde que a diferênça da função integrada é cada vez menor, então $f(a,b) = f(m_(A G)(a,b), m_(A G)(a,b))$,
$
f(a,b) = integral_0^(pi/2) (d theta)/(sqrt(m_(A G)^2(a,b) cos^2(theta)+m_(A G)^2(a,b) sin^2(theta))) = 1 / (m_(A G)(a,b)) integral_0^(pi/2) d theta = pi / (2 m_(A G)(a,b)) => m_(A G)(a,b) = pi / (2 f(a,b)).
$
#fim