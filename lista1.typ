#import "@preview/tablex:0.0.8": tablex

#set page(header: align(center + horizon)[
  #grid(
    columns: (1fr, 1fr, 1fr),
    strong[Lista 1],
    [Análise na Reta],
    align(right)[Soluções],
  )
  #line(length: 100%)
])


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
  Augusto Guerra de Lima.
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
 f(2i-1) = 2i -1 "," f(2i)=2i "," "se" b_i = 0", " ,
 f(2i-1) = 2i "," f(2i) = 2i-1 "," "se" b_i = 1
) $

(a) $phi : {0,1}^NN arrow B$ é injetiva.

#h(2em)
$(b_i)_(i in NN) != (c_i)_(i in NN) => exists i in NN : b_i != c_i$, sem perda de generalidade assuma $b_i = 0$ e $c_i = 1$, então $phi((b_i)_(i in NN)) = f$ tal que $f(2i-1) = 2i$, e $phi ((c_i)_(i in NN)) = f'$ tal que $f'(2i - 1) = 2i - 1$, e portanto $f != f'$, concluí-se, por definição, que $phi$ é injetiva. 

(b) $forall (b_i)_(i in NN)$, $phi((b_i)_(i in NN)): NN arrow NN$ é bijetiva.

#h(2em)
A imagem inversa de $f$ de ${2i-1,2i}$ é o próprio conjunto ${2i-1, 2i}$, tal que $f(b_i) $ é identidade se $b_i = 0$ ou a troca em $b_i = 1$, $f$ é injetiva portanto.\
Seja $x in {2i-1, 2i}$, em caso de $b_i = 0$, a pré imagem de $x$ é $x$, ou a troca com o outro elemento de ${2i -1, 2i}$ para $b_i =  1$, e como todo $x in NN$ tem sua pré-imagem dada desta forma, $f$ é sobrejetiva.\
Concluí-se da injetividade e sobrejetividade que $f$ é bijetiva.

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

(c) Se nem todos os termos são iguais à $G$, vale a desigualdade estrita $x_i < G < x_j$.

Se nem todos os termos são iguais, então há pelo menos um elemento $x$ diferente de $G$.\
#h(2em)
(i) Se $x < G$, há pelo menos mais um elemento $y > G$ diferente de $G$ tal que $x y = G$.\
#h(2em)
(ii) Se $x > G$, o argumento é análogo.

_Indução no número $k$ de termos distintos de $G$_:

#h(2em)
(i) $k = 0$, implica que todos os termos são iguais à $G$ e vale com igualdade que $A = G$.

#h(2em) 
(ii) Por hipótese, $forall 0 <j <= k, A = G$. Quer-se verdadeira a afirmação para $s(k) = k + 1$ termos distintos. Isto é, $n - (k + 1)$ iguais a $G$.\
Ao realizar a substituição nos $n$ termos, obtem-se ao menos $k$ termos distintos, e por $(a)$ e $(b)$, denote-se $A'$ e $G'$ as novas médias aritimética e geométrica após a aplicação de $f$, sob a hipótese de indução. Com efeito, a igualdade é satisfeita com $f^(n-1)$, já que por $(c)$, há ao menos dois termos distintos quando todos não são idênticos.

$ G=^((a)) G' <=^"hip" A' <=^((b)) A => G <= A . $

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

*5. (Teorema de Cantor-Bernstein)*

Sejam $A$ e $B$ conjuntos, $f: A arrow B$ e $g:B arrow A$ funções injetivas, implicam em $h: A arrow B$ bijetiva.

_Demonstração_:

Tomando $a in A $ e considerando aplicações sucessivas das injeções $f$ e $g$, é possível que se retorne a $a$, mas pela injetividade de $g$, $exists ! b : a = g(b) $.

$ a arrow.stroked^f b_1 arrow^g a_1 arrow.stroked^f dots a_n arrow.stroked^f b arrow^g a $

É possível, ter-se de forma indefinida, elementos sucessivos distintos.

$ dots arrow^g a arrow.stroked^f b_1 arrow^g a_1 arrow.stroked^f dots a_n arrow.stroked^f b_(n+1) arrow^g dots $

Da injetividade de $g$, aplicações sucessivas de $a in A"\ " g(B) $.

$ a arrow.stroked^f b_1 arrow^g a_1 arrow.stroked^f dots a_n arrow.stroked^f b_(n+1) arrow^g dots $

Da injetividade de $f$, aplicações sucessivas de $b in B "\ " f(A)$.

$ b arrow^g a_1 arrow.stroked^f b_1 arrow^f dots b_n arrow^f a_(n+1) arrow.stroked^g dots $

Seja $A_1$ o conjunto de elementos de $A$ do terceiro caso; $A_2$ o conjunto de elementos de $A$ do primeiro, segundo e quarto caso; $B_1$ o conjunto de elementos de $B$ do terceiro caso e $B_2$ o conjunto de elementos de $B$ do primeiro, segundo e quarto caso.\

Por construção, $A_1 inter A_2 = (A "\ "g(B)) inter [A "\ "(A "\ " g(B))] = emptyset.rev$, e analogamente, $B_1 inter B_2 = emptyset.rev$ e, $A_1 union A_2 = A$, $B_1 union B_2 = B$.\

(a) $f(A_1) = B_1$, seja $a in A_1$, os elementos da aplicação sucessiva em $B$ pertencem ao terceiro caso.

(b) $g(B_2) = A_2$, seja $b in B_2$, desde que não pertence ao terceiro caso, aplicações sucessivas não iniciaram em $a in A_1$, $g(b) in A$ é um elemento da aplicação sucessiva que também não inicia em $a in A_1$, e logo $g(b) in A_2$. Inversamente, $forall a in A_2: g(B_2)$.

Define-se $h: A arrow B $, 

$ h(x):=^((a) and (b)) cases(
  f(x)", se" x in A_1", " ,
  g^(-1)(x)", se" x in A_2
) $

Que é injetiva, se $x,y in A_1$, $f$ é injetiva, então $h$ é injetivapara tal restrição. Se $x,y in A_2, h$ é injetiva porque é também $g$. Se $x in A_1 "e" y in A_2, h(x) in B_1 "e" h(y) in B_2, h(x) != h(y) because B_1 inter B_2 = emptyset.rev $.\
Também é sobrejetiva, se $y in B_1, exists x in A_1, f(x) = y because f(A_1) = B_1$. Se $y in B_2, x=g(y)$, como $g(B_2) = A_2, x in A_2 "e" h(x) = g^(-1)(g(y))=y$. Concluí-se que $h: A arrow B$ é uma função bijetiva i.e. $|A|=|B|$.

#fim 

*6.*

$(x_n)_(n in NN)$ é uma sequência limitada de números reais. $X_n = {x_k | k>=n}$, $a_n = inf X_n$ e $b_n = sup X_n$.

*(i)*

$(a_n)_(n in NN)$ e $(b_n)_(n in NN)$ convergem.

_Demonstração_:

Como $(x_n)_(n in NN)$ é limitada, $exists a,b in RR :forall n in NN: a <= x_n <= b $. Dessa forma, $forall n in NN :a <= inf X_n <= sup X_n <=b$. Também, $forall n in NN : X_(n+1) subset X_n$, uma vez que $X_n = {x_n} union X_(n+1)$, segue que $a_n = inf X_n <= inf X_(n+1) = a_(n+1)$, uma vez que é comparado o ínfimo de um conjunto com o ínfimo de um de seus subconjuntos e, $b_n = sup X_n >= sup X_(n+1) = b_(n+1)$, um vez que é comparado o supremo de um conjunto com o supremo de um de seus subconjuntos; com efeito, $inf X_n = a_n $ é inferiormente limitado por $inf X_1 = a_1$ e $sup X_n $ é superiormente limitado por $sup X_1 = a_1$, com a sequência $(a_n)_(n in NN)$ de ínfimos sendo não-decrescente e  sequência $(b_n)_(n in NN)$ de supremos sendo não-crescente, pelo teorema da convergência monótona, ambas $(a_n)_(n in NN)$ e $(b_n)_(n in NN)$ são convergentes.

#fim

*(ii)*

$lim inf x_n $ e $lim sup x_n$ são, respectivamente, o menor e o maior valor de aderência da sequência $(x_n)_(n in NN)$.

_Demonstração_:

(a) $lim inf x_n = lim a_n $ é um valor de aderência de $(x_n)_(n in NN)$.

Seja o limite dos ínfimos de $X_n$, $lim a_n = Alpha => forall epsilon: exists n,m in NN: n > m => a_n in (Alpha - epsilon, Alpha + epsilon) $. Como $Alpha + epsilon$ não é uma cota inferior de $X_n$, dado que $a_n$ é o ínfimo, a maior das cotas inferiores, segue que, por propriedades de ínfimo, $exists n' >= n: Alpha - epsilon < a_n' <= x_n' < Alpha + epsilon$, então $x_n' in (Alpha - epsilon, Alpha + epsilon)$, como uma infinidade de índices de $(x_n)_(n in NN)$ pertencem ao intervalo, $Alpha$ é limite de uma subsequência de $(x_n)_(n in NN)$ e, portanto, é um valor de aderência da sequência.

(b) $lim sup x_n = lim b_n$ é um valor de aderência de $(x_n)_(n in NN)$.

Analogamente, seja o limite dos supremos de $X_n$, $lim b_n = Beta => forall epsilon: exists n,m in NN : n>m => b_n in (Beta - epsilon, Beta + epsilon)$.\
Como $Beta - epsilon$ não é uma cota superior de $X_n$, segue que $exists n ' >= n : Beta - epsilon <x_n' <= b_n' < Beta + epsilon$, de $x_n' in (Beta - epsilon, Beta + epsilon)$, $lim sup x_n$ é um valor de aderência da sequência.

(c) $lim inf x_n = lim a_n$ é o menor valor de aderência de $(x_n)_(n in NN)$.

Afim de contradição, $exists gamma < Alpha$ que é um valor de aderência. Como $lim a_n = sup a_n$, por propriedades de supremo, $exists n in NN : gamma < a_n <= Alpha => exists n' in NN: n '> n:  gamma < inf X_n <= x_n'$ por propriedades de ínfimo, i.e. $gamma < a_n <= x_n'$.\
Como $gamma$ é um valor de aderência, $forall epsilon: n,n' in NN: n'> n: x_n in (gamma - epsilon, gamma + epsilon)$, porém, para $epsilon = a_n - gamma => a_n = gamma + epsilon$, de $gamma < a_n <= x_n'$, não há $x_n'$ no intervalo $(gamma - epsilon, gamma + epsilon)$, contradição com $gamma $, valor de aderência, portanto $lim inf x_n$ é o menor valor de aderência da sequência $(x_n)_(n in NN)$.

(d) $lim sup x_n = lim b_n$ é o maior valor de aderência de $(x_n)_(n in NN)$.

Analogamente, $exists gamma > Beta $ que é um valor de aderência. Como $lim b_n = inf b_n$, $exists n in NN: Beta <= b_n < gamma => exists n' in NN: n'>n: x_n' <= sup X_n < gamma $, i.e. $x_n' <= b_n < gamma$.\
Como $gamma$ é um valor de aderência, existem uma infinidade de termos $epsilon$-vizinhos de $gamma$. Contudo, se $epsilon = gamma - b_n => b_n = gamma - epsilon$, de $x_n' <= b_n < gamma$, não há $x_n'$ no intervalo $(gamma - epsilon, gamma + epsilon)$, contradição com $gamma$ valor de aderência, logo $lim sup x_n$ é o maior valor de aderência da sequência $(x_n)_(n in NN)$.

#fim
