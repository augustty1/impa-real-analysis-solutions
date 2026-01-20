#set page(paper: "us-letter", numbering: "1")
#set text(font:"New Computer Modern",size:11pt)
#set par(justify: true)
#show heading: set align(center)
#show heading: set text(size: 13pt, weight: "regular",)
#show heading: smallcaps


#let fim = {
  align(right)[
    #rect(width: 0.4em, height:1.2em, fill: black)
  ]
}

= Lista 1 de Análise na Reta: Soluções
== Verão de 2026 -  IMPA

#align(right)[
  Augusto G. Lima
]

*1.*

$forall m,n in NN : [(m+n = n+ m) and (m dot n = n dot m)].$

_Demonstração_:

$
cases(
  m + 1 = s(m) "," ,
  m + s(n) = s(m + n)
)

quad

"e"

quad


cases(
 m dot 1 = m ",",
 m dot (n + 1) = m dot n  + m
)

quad
,
forall m,n in NN,

"por definição."
$

(a) $forall m in NN : 1 + m = s(m)$. _Indução_ em $m$:

#h(2em)
(i) $1 + 1 =^("def") s(1)$.

#h(2em)
(ii) Por hipótese, $1+k = s(k)$. Quer-se $1 + s(k) = s(s(k)).$

#h(2em)
$s(1+k) =^("hip") s(s(k)) arrow^("def") 1 + s(k) = s(s(k))$.


(b) $forall m,n in NN: s(m) + n = s(m+n)$. _Indução_ em $n$:

#h(2em)
(i) $s(m) + 1 =^("def") s(s(m)) =^("def") s(m + 1)$.

#h(2em)
(ii) Por hipótese, $s(m) + k = s(m+k)$. Quer-se $s(m) + s(k) = s(m + s(k))$.

#h(2em)
$s(s(m) + k) =^("hip") s(s(m+k)) arrow^("def") s(m) + s(k) = s(m + s(k)). $

(c) (Comutatividade da adição dos números naturais) : $forall m,n in NN : m+n = n + m$. _Indução_ em $m$:

#h(2em)
(i) $1 + n =^((a)) s(n) =^("def") n + 1$.

#h(2em)
(ii) Por hipótese, $k+n = n+ k$. Quer-se $s(k) + n = n + s(k)$.

#h(2em)
$s(k+n) = s(n + k) arrow^((b)) s(k) + n = s(n+k) arrow^("def") s(k) + n = n + s(k)$.

(d) $forall m in NN: 1 dot m = m$. _Indução_ em $m$:

#h(2em)
(i) $1 dot 1 =^("def") 1$.

#h(2em)
(ii) Por hipótese, $1 dot k = k$. Quer-se $1 dot s(k) = s(k)$.

#h(2em)
$1 dot s(k) =^("def") 1 dot (k+1) =^("def") 1 dot k + 1 =^("hip") k+1 =^("def") s(k)$.

(e) $forall m,n in NN: (m+1) dot n = m dot n + n$. _Indução_ em $n$:

#h(2em)
(i) $(m+1) dot 1 =^("def") m+1 =^((d)) 1 dot m + 1$.

#h(2em)
(ii) Por hipótese, $(m+1) dot k = m dot k + k$. Quer-se $(m+1) dot s(k) = m dot s(k) + s(k)$.

#h(2em)
$(m+1) dot s(k) =^("def") (m+1) dot (k+1) =^("def") (m+1) dot k  + (m+1) =^("hip") m dot k + k + (m+1) =^("def")$

#h(2em)
$=^("def") m dot k + k + s(m) =^("def") m dot k + s(k + m) =^("def") m dot k + s(m + k) =^("def") m dot k + m + k + 1 =^("def")$

#h(2em)
$=^("def") m dot k + m + s(k) =^("def") m dot (n+1) + s(k) =^("def") m dot s(k) + s(k)$.

(f) (Comutatividade da multiplicação dos números naturais): $forall m,n in NN : m dot n = n dot m$. _Indução_ em $m$:

#h(2em)
(i) $1 dot n =^((d)) n =^("def") n dot 1$.

#h(2em)
(ii) Por hipótese, $k dot n = n dot k$. Quer-se $s(k) dot n = n dot s(k)$.

#h(2em)
$s(k) dot n =^("def") (k+1) dot n =^((e)) k dot n + n =^("def") n dot (k+1) =^("def") n dot s(k).$

$ therefore forall m,n in NN:  [(m+n =^((c)) n+m) and (m dot n =^((f) ) n dot m)]. $

#fim


*2.*

$|B|=|{f: NN arrow NN | exists f': NN arrow NN:( f'= f^(-1))}| > alef_0$.

_Demonstração_:

($star$) ${0,1}^NN$ é não enumerável

Considere $phi: {0,1}^NN arrow B, (b_i)_(i in NN) mapsto (f: NN arrow NN)$, a função injetiva que associa uma sequência infinita de ${0,1}$ a uma bijeção entre números naturais, em $B$, sob a seguinte regra:

$ phi((b_i)_(i in NN)) := cases(
 f(2i-1) = 2i -1 "," f(2i)=2i "," "se" b_i = 0 ";" ,
 f(2i-1) = 2i "," f(2i) = 2i-1 "," "se" b_i = 1.
) $


TODO\
(a) $phi : {0,1}^NN arrow B$ é injetiva.

#h(2em)

TODO\
(b) $forall (b_i)_(i in NN)$, $phi((b_i)_(i in NN)): NN arrow NN$ é bijetiva.

#h(2em)

$ therefore^((a) and (b)) |B| >= |{0,1}^NN| >^("(" star ")") alef_0$.

#fim


*3.*

$ G =   (product_(i=1)^n x_i)^(1/n) <= 1/n sum_(i=1)^n x_i = A , \ quad x_i in RR^+, i in [1,n] inter NN  . $

_Demonstração_:


Seja $(x_i) = x_1,x_2,...,x_n$; $x_i = min {(x_i)}$ e $x_j = max {(x_i)}$.

$f[(x_i)] = x_1, x_2,..., x_(i-1), G,...,x_(j-1), (x_i x_j)/G,...,x_n$; Mais explicitamente, a função que associa a sequência finita de números reais positivos com a sequência finita tal que a posição do índice $i$ de $x_i$ é $G$ e a posição do índice $j$ de $x_j$ é $(x_i x_j)/G$; e tudo mais constante.

(a) $ product_(i=1)^n x_i = product_(i=1)^n f(x_i).$ A média geométrica é constante sob $f$.

$ product_(i=1)^n x_i = x_i x_j dot product_(k = 1 \ k!=i,j)^n x_k = G (x_i x_j)/G dot  product_(k = 1 \ k!=i,j)^n f(x_k) = product_(i=1)^n f(x_i) . $

(b) $ sum_(i=1)^n x_i >= sum_(i=1)^n f(x_i).$ A média aritimética não cresce sob $f$.

$ (G>=x_i) and (x_j >= G) arrow (G - x_i >= 0) and (x_j - G >= 0) arrow (G-x_i) (x_j-G)>= 0 $ 

$ G^2 - G(x_i + x_j) + x_i x_j <= 0 => x_i + x_j >= G + (x_i x_ j)/G  => sum_(i=1)^n x_i >= sum_(i=1)^n f(x_i) . $

TODO

Agora argumentar por divisão de casos que tem que ter dois caras diferentes de $G$ e dai todos convergem para $G$ e fim.

#fim 


*4.*

${0}!= G subset.eq RR; quad forall x,y in G : x-y in G; quad G^+ :={x in G | x > 0}.$

*(i)*

$inf G^+ = 0 => G" é denso em "RR$.

_Demontração_:

(a) $0 in G because x-x in G.$

(b) $-x in G because 0 - x in^((a)) G.$

(c) $forall n in NN : n x in G. $_Indução_ em $n$:

#h(2em)
(i) $-x-x in G arrow -2x in G arrow 2x in^((b)) G$

#h(2em)
(ii) Por hipótese, $k x in G$. Quer-se $s(k)x in G$.

$k x in G arrow^((b)) -k x in G arrow -k x - x in G arrow -(k+1) x in G arrow^((b)) (k+1) x in G arrow^"def" s(k) x in G. $

Sob posse dos lemas acima, finalmente, considerando o intervalo não degenerado $(a,b) subset RR$. $b-a > 0$. Como $inf G^+ = 0, quad exists epsilon in G^+ : 0 < epsilon < b-a$.\
Como $RR$ é arquimediano, $exists n in NN: n epsilon > b.$\
Seja $X = {n in ZZ | n epsilon > b}$, é limitado inferiormente por $b/ epsilon$, não vazio, e é subconjunto de $ZZ$, e portanto, possui um elemento mínimo.\
Tome $n = min X$, clama-se que $(n-1) epsilon in (a,b) inter G$;
$(n-1) epsilon < b$, desde que $n$ é o menor elemento de $X$; $epsilon > b - a => - epsilon < -(b-a) => (n-1) epsilon = n epsilon - epsilon > b - (b-a) = a.$\
E portanto, qualquer que seja o intervalo $(a,b), (n-1) epsilon in (a,b)$, concluí-se que $G$ é denso em $RR$.

#fim

*(ii)*

$inf G^+  = a > 0 => a in G ^+  and G = {k a | k in ZZ}.$

_Demonstração_:

(d) $a in G^+$.

Afim de contradição, $a in.not G^+$, então para $0<epsilon < a$, $exists x in G^+ : a < x < a + epsilon$, caso contrário, $forall x in G^+: x >= a + epsilon$, contradição com $inf G^+ = a$; então $x = a + epsilon'$, para $0 < delta < epsilon'$, $exists y in G^+ : a < y < a + delta$.\
Como $x,y in G^+ , x - y in G$, e $x- y > 0 arrow x-y in G^+$, mas $x - y < (a+ epsilon) - (a + delta) = epsilon - delta < epsilon < a $, contradição com $inf G^+ = a$.

(e) $G = {k a | k in ZZ}$.

${k a | k in ZZ } subset^((b) and (c) and (d)) G .$ Agora é necessário demonstrar que não existe um elemento que não é da forma $k a in G , k in ZZ$.\
Afim de contradição, $exists x >0 : x in G^+ "\ " {k a | k in ZZ}$. Como $RR$ é arquimediano, $exists n in NN: n a > x$. Seja $X = {n in ZZ | n a > x}$, não vazio pela propriedade de $RR$ arquimediano, subconjunto de $ZZ$ e limitato inferiormente por $x / a $, tem-se que $X$ possui um elemento mínimo.\
Tome, $n = min X$, da minimalidade de $n$, segue que $(n-1) a <= x$.\
Como $G$ é um grupo aditivo e, $x, (n-1) a in G$, tem-se $x - (n-1) a in G$, mas $0 < x -(n-1) a < n a - (n-1) a = a $, contradição com $inf G^+ = a $.\
Concluí-se pois, seja $G$ um grupo aditivo, se $inf G^+ =a $, então $a in G^+$ e $G = {k a | k in ZZ}$.

#fim

*(iii)*

$G = {m + n alpha | m,n in ZZ and alpha in RR"\ " QQ} => G " é denso em" RR $.

_Demonstração_:

(f) $G$ é um grupo aditivo.

Para $m,m',n,n' in ZZ: m + n alpha , m' + n' alpha in G$, tem-se $(m + n alpha)-(m' + n' alpha) = (m-m')+(n-n') alpha in G because (m-m'),(n-n') in ZZ$.

Como $G$ é um grupo aditivo, seja $G^+$ o subconjunto de seus elementos positivos, $inf G^+ >=0$. Se $inf G^+ = 0$, por (i), $G "é denso em" RR$, toma-se então $inf G^+ = a > 0$. Se $inf G^+ = a >0$, por (ii), $G = {k a | k in ZZ}$. Mais explicitamente, os elementos em $G$ admitem representação da forma $m +n alpha$ e $k a$.\
$0 + 1 alpha = alpha in G => exists k in ZZ : k a = alpha => exists x in G : x = m + n alpha = m + n k a $. Mas se $x in G => exists r in ZZ : x = r a $, ou seja, $r a = m + n k a $, então $m = (r - n k )a$, onde $(r - n k)= q in ZZ$, ou seja, $m = q a$.\
Ou seja, $m + n k a = q a + n k a => a = m / q in QQ$, mas $alpha = k a in QQ$ é uma contradição com $alpha $ irracional.\
Portanto, $inf G^+ = 0$  e $G = {m + n alpha | m , n in ZZ and alpha in RR"\ " QQ } "é denso em" RR$.

#fim

*6.*

$(x_n)_(n in NN)$ é uma sequência limitada de números reais. $X_n = {x_k | k>=n}$, $a_n = inf X_n$ e $b_n = sup X_n$.

*(i)*

$(a_n)_(n in NN)$ e $(b_n)_(n in NN)$ convergem.

_Demonstração_:

Como $(x_n)_(n in NN)$ é limitada, $exists a,b in RR :forall n in NN: a <= x_n <= b $. Dessa forma, $forall n in NN :a <= inf X_n <= sup X_n <=b$. Também, $forall n in NN : X_(n+1) subset X_n$, uma vez que $X_n = {x_n} union X_(n+1)$, segue que $a_n = inf X_n <= inf X_(n+1) = a_(n+1)$, uma vez que é comparado o ínfimo de um conjunto com o ínfimo de um de seus subconjuntos e, $b_n = sup X_n >= sup X_(n+1) = b_(n+1)$, um vez que é comparado o supremo de um conjunto com o supremo de um de seus subconjuntos; com efeito, $inf X_n = a_n $ é inferiormente limitado por $inf X_1 = a_1$ e $sup X_n $ é superiormente limitado por $sup X_1 = a_1$, com a sequência $(a_n)_(n in NN)$ de ínfimos sendo não-decrescente e  sequência $(b_n)_(n in NN)$ de supremos sendo não-crescente, pelo teorema da convergência monótona, ambas $(a_n)_(n in NN)$ e $(b_n)_(n in NN)$ são convergentes.

#fim 
