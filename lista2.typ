#import "@preview/tablex:0.0.8": tablex

#set page(header: align(center + horizon)[
  #grid(
    columns:(.5fr, 1.87fr, 1fr),
    strong[Lista 2],
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

#line(length: 100%)

*1:* Seja $sigma: NN -> NN$ a bijeção tal que $sigma(1)=1$ e, para todo $k in NN$, temos $sigma(k^2+2r-1)=k^2+k+r$, para $r$ inteiro com $1<= r <= k+1$ e $sigma(k^2+2r)=k^2+k+1-r$, para $r$ inteiro $1<=r<=k$.\
a) Prove que se $(a_i)_(i in NN)$ é uma sequência tal que $Sigma a_i$ converge então $Sigma a_(sigma(i))$ converge e $Sigma a_i = Sigma a_(sigma(i))$.\
b) Exiba uma sequência $(b_i)_(i in NN)$ tal que $Sigma b_i$ diverge mas $Sigma b_(sigma(i))$ converge.

#line(length: 100%)

a) *Lema 1.1*: Todos os índices naturais entre $k^2$ e $(k+1)^2$ são associados entre si, ao se aplicar $sigma$:\
$ k^2 < k^2 + 2r - 1 < k^2 + 2k + 1 = (k+1)^2, " com "1<=r<=k+1; $
$ k^2 < k^2 + 2r < k^2 + 2k + 1= (k+1)^2, " com "1<=r<=k. $

$ "e " k^2 < sigma(k^2 + 2r -1) = k^2 + k + r <= k^2 + k + (k+1) = k^2 + 2k + 1 = (k+1)^2, " com "1<=r<=k+1; $
$ k^2 < sigma(k^2 + 2r) = k^2 + k + 1 - r < k^2 + k + (k+1) =  (k+1)^2, " com "1<=r<=k.  $

Isto é, a bijeção $sigma bar_(k^2 + 1)^(k+1)^2 $ tem como imagem o conjunto ${k^2+1, k^2 + 2,...,(k+1)^2}$.

*Lema 1.2*: Todo índice natural sendo quadrado perfeito é ponto fixo de $sigma$; como $1<=r<=k+1$, tem-se que $(k+1)^2$ é escrito na forma
$ k^2 + 2(k+1) - 1$ e $sigma(k^2 + 2(k+1) -1) = k^2 +k + k + 1 = k^2 + 2 k + 1 = (k+1)^2 $.Em particular, com o _Lema 1.1_, a subsequência das reduzidas $s_(k^2) = s_(sigma(k^2))$.\


*Lema 1.3:* Entre os índices de quadrado perfeito há duas subsequências finitas, uma de índices crescentes e outra de índices decrescentes. De fato, entre os índices $k^2 + 2 dot 1 - 1 = k^2 + 1$ até $k^2 + 2 (k+1) -1 = (k+1)^2$ i.e. $(k^2, (k+1)^2] inter NN$, os índices da forma $sigma (k^2 + 2r  - 1)$ com $1 <= r <= k + 1$ satisfazem

$ sigma(k^2 + 2r -1) = k^2 + k + r < k^2 + k + (r+1) = sigma(k^2 + 2(r+1) - 1);  $

Os índices da forma $sigma(k^2 + 2r)$ satisfazem

$ sigma(k^2 + 2r)= k^2 + k + 1 - r > k^2 + k + 1 - (r+1) = sigma(k^2 + 2(r+1)). $

O critério de Cauchy para séries diz que, como $Sigma a_i$ converge, então $forall epsilon.alt > 0 : exists N in NN  : n >= N : |s_(n+p) - s_n| = |a_n + a_(n+1) +...+ a_(n+p)| < epsilon.alt/5, forall p in NN $.\
Tomando $K^2 >= N$, um quadrado perfeito suficientemente grande, se $m>n >= K^2$, e sejam $x^2$ o primeiro quadrado perfeito após $n$ e $y^2$ o último quadrado perfeito antes de $m$, então pela desigualdade triangular

$ |a_n + ... + a_(x^2) + ... + a_(y^2)+...+ a_m| <= \
  |a_n + ... + a_(x^2)| + |a_(x^2 + 1) + ... + a_(y^2)| + |a_(y^2 + 1) + ... + a_m|
$ 



$ "e" |a_(sigma (n)) + ... + a_(sigma(x^2)) +...+ a_(sigma(y^2))+... +a_(sigma(m))| <= 
\
|a_(sigma(n)) + ... + a_(sigma(x^2))| + |a_sigma(x^2 + 1) + ... + a_(sigma(y^2))| + |a_(sigma(y^2 + 1)) + ... + a_(sigma(m))| quad ...(*) $
No lado direito da desigualdade $(*)$, o segundo termo $|s_(sigma(y^2)) - s_(sigma(x^2 + 1))| = |s_(y^2) - s_(x^2 + 1)| < epsilon.alt/5$, já que entre os índices de quadrado perfeito as somas parciais são iguais e $y^2 >= x^2 + 1>= N$.\
Pelo _Lema 1.1_ e _1.3_, e o critério de Cauchy para séries, o primeiro termo  
$ |a_n +... + a_(x^2)| <= |a_((x-1)^2 + 2r -1) + a_((x-1)^2 + 2(r+1) - 1) + ... + a_(x^2)| + |a_((x-1)^2 + 2r) + a_((x-1)^2 + 2(r+1)) + ... + a_(x^2 -1)| <= 2 epsilon.alt /5. $

Para algum $r>=1$ tal que $(x-1)^2 + 2r-1>= n$. E então

$ |a_sigma(n) + ... + a_(sigma(x^2))| <= |a_((x-1)^2 + (x-1) + r) + a_((x-1)^2+(x-1)+(r+1)) + ... + a_((x-1)^2 + (x-1) + (x+1))| \ +  |a_((x-1)^2+(x-1)+1 -r)+ a_((x-1)^2+(x-1)+1-(r+1)) + ... + a_((x-1)^2+(x-1)+1-(x-1))| <= 2 epsilon.alt / 5.  $

Desde que os índices são maiores que $K^2$ e vale pelo _Lema 1.1_ que estão entre quadrados perfeitos; o argumento é análogo para o terceiro termo do lado direito da desigualdade $(*)$. Logo

$ |a_(sigma (n)) + ... + a_(sigma(x^2)) +...+ a_(sigma(y^2))+... +a_(sigma(m))| <=
\
|a_(sigma(n)) + ... + a_(sigma(x^2))| + |a_sigma(x^2 + 1) + ... + a_(sigma(y^2))| + |a_(sigma(y^2 + 1)) + ... + a_(sigma(m))| < 2 epsilon.alt/5 + epsilon.alt/5 + 2 epsilon.alt/ 5 = epsilon.alt . $
Concluí-se que $Sigma a_(sigma(i))$ é uma série que satisfaz o critério de Cauchy e portanto converge.

Como $Sigma a_i$ converge e $Sigma a_(i^2)$ é uma subsequência convergente, a primeira converge para o mesmo valor da segunda, mas como $Sigma a_(i^2) = Sigma a_(sigma(i^2))$, pelo _Lema 1.2_, e $Sigma a_(sigma(i^2))$ converge, então $Sigma a_i =  Sigma a_(sigma(i))$.

#fim

b) $ (b_i)_(i in NN) := cases(
    1/k", se " k^2 < i <= k^2 + k";",
    -1/k", se " k^2 + k < i <(k+1)^2";",
    0", se " i=(k+1)^2. 
) $

$Sigma b_i$ é divergente, uma vez que $s_(k^2 + k ) = 1$ e $s_((k+1)^2) = 0, forall k in NN union {0}$.

*Lema 1.4:* Índices da forma $k^2 + 2 r -1 $ são associados com $sigma(k^2 + 2r - 1 )= k^2 + k + r > k^2 + k$, i.e. sucedem $k^2 + k$; já os índices da forma $k^2 + 2r$ são associados com $sigma(k^2 + 2r) = k^2 + k + 1 - r$ e, desde que $1 <= r <= k$, $k^2 + k + 1 - r <= k^2 + k$.\
Como em $(k^2, (k+1)^2) inter NN$, todo índice natural da forma $k^2 + 2r -1 $ é sucedido por um índice natural da forma $k^2 + 2r$, segue que sob a bijeção $sigma$, se todo índice $sigma(k^2 +2r -1)$ é sucedido por um índice $sigma(k^2 + 2r)$, em $sigma((k^2, (k+1)^2]) inter NN$, então, neste intervalo interseccionado, todo índice $i> k^2 + k $ é sucedido por um índice $i'<=k^2 + k$.

Pelo _Lema 1.4_, em $Sigma b_(sigma(i))$, em $(sigma(k^2), sigma((k+1)^2)) $, termos $-1/k$ são sucedidos por termos $1/k$, então $b_(sigma(k^2+2r-1))+b_(sigma(k^2 + 2r)) = -1/k + 1/k = 0$.\
As somas parciais possíveis de $Sigma b_(sigma(i))$ são, $s_(2k) = 0$, $s_((k+1)^2) = 0$ e $s_(2k - 1) = -1/k$.\
Como $|s_i| <= 1/k$ e $lim_(k -> infinity) 1/k = 0$, então, pelo teorema do confronto, em todos os casos $s_i = 0$ e $Sigma b_(sigma(i)) = 0$, é uma série convergente.

#fim 


#pagebreak()

#line(length: 100%)

*2:* Sejam $(a_i)_(i in NN)$ uma sequência de termos positivos, $s_0 = 0$ e $s_n = sum_(i=1)^n a_i, forall n>=1$.\
a) Prove que, se $sum_(i=1)^infinity a_i = +infinity$, então 
$ sum_(i=1)^infinity a_i/s_i = +infinity " e " sum_(i=1)^infinity a_i/s_i^alpha "converge, " forall alpha > 1 . $
b) Prove que, se $sum_(i=1)^infinity a_i$ converge, então, se $r_n = sum_(i=n)^infinity a_i = (sum_(i=1)^infinity a_i) - s_(n-1), forall n in NN, $
$ sum_(i=1)^infinity a_i/r_i = +infinity " e " sum_(i=1)^infinity a_i/r_i^lambda "converge, " forall lambda < 1 . $

#line(length: 100%)

a) Define-se $S_i := {n in NN | 2^i <= s_n <= 2^(i+1)}$ i.e. os índices naturais tais que as reduzidas de $Sigma a_i$ tem seu valor entre $2^i$ e $2^(i+1)$, potências de $2$ consecutivas. Afirma-se que $S_i = [a,b] inter NN$ tal que $sum_(i in S_k) a_i/s_i = sum_(i=a)^b a_i / s_i $. Com efeito, para $S_i = emptyset$ é evidente, tome não vazio; $S_i$ é limitado, como $Sigma a_i$ é divergente, $lim_(n -> infinity) s_n = infinity$, dessa forma $s_n >= 2^(i+1)$ para algum $n$ suficientemente grande, e $exists a,b in NN: S_i = [a,b] inter NN$ ou $S_i = emptyset$ para todo $i in NN$.\
Se $n in S_i$ então $s_n >= 2^i$ e $s_(n-1) < 2^(i+1)$, como $a_n = s_n - s_(n-1)$, deve ser 
$ a_n/s_n = (s_n - s_(n-1))/s_n = 1 - s_(n-1)/s_n >= 1 - 2^(k+1)/2^k = 1/2 . $
Segue que $sum_(i in S_k) a_i / s_i >= 1/2 $ para $S_k != emptyset$. Os termos da série são não negativos, logo $sum_(i=1)^infinity a_i / s_i = sum_(k=0)^infinity sum_(i in S_k) a_i / s_i$ pela associativadade de termos não negativos.\
Como $lim_(n -> infinity) s_n = + infinity => forall K: exists n in NN: s_n >= 2^K$, logo existe $i >= K$ tal que $S_i != emptyset$, portanto o conjunto ${i in NN: S_i != emptyset}$ deve ser infinito. Seja $m in NN$, considerando os primeiros $m$ índices naturais $i_1< i_2 < ...< i_m$ tais que $S_(i_j) != emptyset$, pelo fato de que $sum_(i in S_k) a_i / s_i >= 1/2$, tem-se que $sum_(j=1)^m sum_(i in S_k_j) a_i / s_i >= sum_(j=1)^(m) 1/2 = 1/2 m$. Por instanciação universal de $m$, $sum_(i=1)^infinity a_i / s_i = + infinity$. Concluí-se sobre a divergência de $sum_(i=1)^infinity a_i / s_i$ para $alpha = 1$

Como supracitado, a família $(S_i)_(i in NN)$ tem infinitos conjuntos não vazios. Para $alpha > 1 $ vale
$ a_i / s_i^alpha <= a_i / (2^i)^alpha = a_i/2^(alpha i) . $
Assim, $sum_(i in S_k) a_i / s_i^alpha <= 1/2^(alpha i) sum_(i in S_k) a_i$. Mas como todo $s_i < 2^(k+1)$ para $i in S_k$; como $s_i$ é a reduzida de termos positivos, isso implica que a soma dos incrementos correspondentes aos índices de $S_k$ satisfazem $sum_(i in S_k) a_i <= 2^(k+1)$. De fato, para a soma dos $a_i$ em $S_k$ tem-se $sum_(i in S_k) a_i = sum_(i = a)^b a_i = s_b - s_(a-1) < 2^(k+1) - 2^k = 2^k$.\

$ sum_(i in S_k) a_i / s_i^alpha <= 1/2^(alpha i) sum_(i in S_k) a_i <= 2^(k+1) / 2^(alpha k) = 2 / (2^((alpha-1)k)) = 2/(2^(alpha -1 )^k). $

A série $sum_(i=0)^infinity 2/2^((alpha-1)i) >= sum_(i=1)^infinity a_i / s_i^alpha$ é uma série geométrica de razão $2^(-(alpha-1))<1$, já que $alpha > 1$ e portanto converge, segue que $sum_(i=1)^infinity a_i / s_i^alpha$ converge.  

#fim

b)  A demonstração é análoga, vejamos:\
A priori, note que $((r_i))_(i in NN)$ é decrescente pela definição, e $a_n = r_n - r_(n+1)$; Além disso, $r_n = a_n + r_(n+1)$ com $forall n in NN: a_n > 0$, então $0 < r_(n+1) < r_n$ é estritamente decrescente.\
Analogamente a a), $a_i / r_i = 1 - r_(n+1) / r_n$.\
Define-se $R_i := {n in NN | 1/2^(i+1) < r_n <= 1/2^i}$.\
Como $lim_(n -> infinity) r_n = 0$, na família $(R_i)_(i in NN)$ existem infinitos conjuntos não vazios, finitos já que $(r_i)_(i in NN)$ é estritamente decrescente.\
Se $i in R_k$ então\
$ r_i <= 1/2^i " e " r_(i+1) > 1/2^(i+1) => r_(i+1)/r_i <= 2^i / 2^(i+1) = 1/2 => a_i / r_i >= 1 - 1/2 = 1/2 . $
Segue que $sum_(i in R_k) a_i / r_i >= 1/2$, pela infinidade de conjuntos de índices não vazios, $sum_(i=1)^infinity a_i / r_i = sum_(k=0)^infinity sum_(i in R_k) a_i / r_i = + infinity$, logo $sum_(i = 1)^infinity a_i / r_i$ diverge.\

Para $alpha > 1$, se $n in R_i$, então $r_i <= 1/2$ e portanto $a_i/r_i^alpha <= 2^((i+1)alpha)a_i$. Dessa forma, como $sum_(i in R_k) a_i = r_(i_k) - r_(i_j + 1)$ para $i_k ... j_k in R_k$ tem-se $sum_(i in R_k) a_i <= 1/2^k$.\
De $sum_(i in R_k) a_i / r_i^alpha <= 2^((k+1)alpha)/2^k = 2^alpha 2Ç ((alpha -1)k)$, obtém-se $sum_(i = 1)^infinity a_i / r_i^alpha <= 2^alpha sum_(i=0)^infinity 2^((alpha - 1)i)$, que de $alpha>1$ confere uma série geométrica convergente e portanto $sum_(i=1)^infinity a_i / r_i^alpha$ para $alpha > 1$.

#fim 

#pagebreak()

#line(length: 100%)

*3:* Sejam $X,Y subset RR$ com $Y subset X$. Dizemos que $Y$ é _fechado_ em $X$ se $overline(Y) inter X = Y$, e que $Y$ é _aberto_ em $X$ se, para todo $y in Y$, existe $epsilon.alt>0$ tal que $(y-epsilon.alt, y+ epsilon.alt) inter X subset Y$.\
a) Prove que, se $Y$ é aberto em $X$, então existe $U subset RR$ aberto com $U inter X = Y$.\
b) Prove que $Y$ é aberto em $X$ se, e só se, $X backslash Y$ é fechado em $X$.

#line(length: 100%)

a) Como $Y$ é aberto em $X$, $forall y in Y: exists epsilon.alt_y >0 : (y - epsilon.alt_y, y + epsilon.alt_y) inter X subset Y$. Considerando, para todo $y in Y$ a união dos intervalos abertos $ U =  union.big_(y in Y)(y- epsilon.alt_y, y+ epsilon.alt_y)$. $U$ sendo união de intervalos abertos é, por definição, aberto. $forall y in Y: y in U => Y subset U$, uma vez que $Y subset X => Y subset U inter X$. Por outro lado, $ U inter X = (union.big_(y in Y) (y-epsilon.alt_y, y+epsilon.alt_y)) inter X = union.big_(y in Y)((y-epsilon.alt_y, y + epsilon.alt_y) inter X) subset Y $
Desde que todo $(y- epsilon.alt_y, y+ epsilon.alt_y) inter X subset Y$. Logo $exists U subset RR:U inter X = Y$.

#fim

b) ($=>$) Se $Y$ é aberto em $X$, então $exists U subset RR: U inter X = Y$, e $RR backslash U$ é fechado.\
$X backslash Y = X backslash (U inter X) = X inter (RR backslash U).$

*Lema 3.1:* Sejam $A, B subset RR$, $A inter B subset A$, então $overline(A inter B) subset overline(A)$; analogamente para $overline(A inter B) subset overline(B)$. Logo $overline(A inter B) subset overline(A) inter overline(B)$.

$overline(X backslash Y) = overline(X inter (RR backslash U)) subset overline(X) inter overline((RR backslash U)) = overline(X) inter (RR backslash U)$, pelo _Lema 3.1_. Então $overline(X backslash Y) inter X subset (overline(X) inter (RR backslash U)) inter X$.\

Tomando o lado direito da relação, $(overline(X) inter (RR backslash U)) inter X = (overline(X) inter X ) inter (RR backslash U) = X inter (RR backslash U ) = X backslash Y $, logo $overline(X backslash Y) inter X subset X backslash Y$; e a relação simétrica é válida, logo $overline(X backslash Y) inter X = X backslash Y$. Por definição, $X backslash Y$ é fechado em $X$.

($arrow.l.double$) *Lema 3.2:* A recíproca de a) é valida, i.e. se existe $U subset RR$ aberto com $U inter X = Y$, então $Y$ é aberto em $X$. Ora, se $exists U subset RR: U inter X = Y$, $forall y in Y: y in U$, como $U$ é aberto, existe, por definição, $epsilon.alt > 0$ tal que $(y- epsilon.alt, y+ epsilon.alt) subset U$, como $(y - epsilon, y + epsilon) inter X subset U inter X = Y$, $Y$ é aberto em $X$.

Se $X backslash Y$ é fechado em $X$, então $overline(X backslash Y) inter X = X backslash Y$.\
Desde que $Y subset X$, 
$ Y = X backslash (X backslash Y) = X backslash ( overline(X backslash Y) inter X) = X inter (RR backslash ( overline(X backslash Y) inter X )) = X inter ((RR backslash (overline(X backslash Y))) union (RR backslash X )) = \ (X inter (RR backslash (overline(X backslash Y)))) union (X inter (RR backslash X)) =  (X inter (RR backslash (overline(X backslash Y)))) union emptyset = X inter (RR backslash (overline(X backslash Y))).  $
Como $overline(X backslash Y)$ é um conjunto de pontos aderentes, portanto fechado, $RR backslash (overline(X backslash Y))$ é aberto. Como $Y = X inter (RR backslash (overline(X backslash Y))$, então, pelo _Lema 3.2_, $Y$ é aberto em $X$.

#fim


#pagebreak()


#line(length: 100%)

*4. Teorema de Baire:* Prove o _Teorema de Baire para fechados:_ se $F subset RR$ é fechado e, para cada $i in NN$, $A_i subset RR$ é um aberto tal que $A_i inter F$ é denso em $F$ então $inter.big_(i in NN)A_i inter F$ é denso em $F$.

#line(length: 100%)

Se $A_i inter F$ é denso em $F$, $F subset overline(A_i inter F)$ e de (Curso de Análise vol1. Elon Lages Lima - $12^("a")$ edição, p.174), é equivalente dizer que todo intervalo aberto $I$ que contenha um ponto de $F$ deve conter também algum ponto de $A_i inter F$ i.e. $I inter A_i inter F != emptyset$.\
Primeiramente, como $A_1 inter F$ é denso em $F$, $I inter A_1 inter F != emptyset$. Como $A_1$ e $I$ são abertos, a interseção dois a dois $A_1 inter I$ é aberta. Seja $x in I inter A_1 inter F$, como $x in A_1 inter I$ e este é aberto, tem-se um intervalo $I_1 subset I$ que possui $x$ e $I_1 inter F != emptyset$. Seja $I_1 = (a_1,b_1) subset A_1 inter I$, tome $b_1 - a_1 < 1$.  \
Agora indutivamente, $A_(i+1) inter F$ é denso em $F$, se $I_i inter F != emptyset$, $I_i inter A_(i+1) inter F != emptyset$; tomando $x in I_i inter A_(i+1) inter F$, como $A_(i+1) inter I_i$ é aberto, exite $I_(i+1) subset A_(i+1) inter I_i$ tal que $x in I_(i+1)$. Note que $forall i in NN: I_(i+1) subset I_i$, com $I_i subset A_i$ e $I_i inter F != emptyset$. Exigindo $I_(i+1) = (a_(i+1), b_(i+1)) subset I_i inter A_(i+1)$ com $b_(i+1) - a_(i+1) < 1 /(i + 1)$.\
Desde que cada $overline(I_i)$ é fechado e $overline(I_(i+1)) subset overline(I_i)$ para todo $i in NN$, vale o lema dos intervalos encaixados, $inter.big_(i in NN) overline(I_i) != emptyset$, ou seja existe $x in inter.big_(i in NN) overline(I_i)$ na intersecção dos fechos dos intervalos encaixados.\
$x in F$. Por construção, $lim_(i -> infinity) (b_i - a_i) = 0$. Para todo $i in NN$, $I_i inter F != emptyset$, tomando $x_i in I_i inter F$, tem-se a sequência $(x_i)_(i in NN)$ de $F$. $forall epsilon.alt > 0: exists N in NN: i > N, |b_i - a_i| < epsilon.alt$, como $x in overline(I_i) = [a_i,b_i]$ deve ser $a_i <= x <= b_i$ e $forall x_i in I_i : a_i < x_i < b_i$, logo $|x_i - x| <= b_i - a_i < epsilon.alt$, logo $lim_(i -> infinity) x_i = x$, mas como $(x_i)_(i in NN)$ é uma sequência de $F$ convergindo para $x$ e $F$ é fechado $x in F$.\
Como $x in overline(I_i)$, para todo $i in NN$, por definição, $forall epsilon.alt > 0: exists y in I_i: |x-y| < epsilon.alt$, como $y in I_i subset A_i$ mas $A_i$ é aberto, existe uma bola de raio $delta$ com $(y- delta, y + delta) subset A_i$, tomando $epsilon.alt = delta$, $y in I_i$ com $|x-y|<delta => x in (y-delta, y + delta) subset A_i$, portanto $x in A_i$, para todo $i in NN$. E $x in inter.big_(i in NN) A_i.$\
Então, $x in I inter inter.big_(i in NN) A_i inter F$.\
Concluí-se, $I inter F != emptyset$ e $I inter inter.big_(i in NN) A_i inter F != emptyset$, pela definição apresentada $inter.big_(i in NN) A_i inter F$ é denso em $F$.

#fim

#pagebreak()

#line(length: 100%)

*5:* Sejam $X subset RR$ e $a in X$. Dizemos que $a$ é _ponto de condensação_ de $X$ se $X inter (a - epsilon.alt, a + epsilon.alt)$ é não-enumerável para todo $epsilon.alt>0$.\
a) Prove que, se $X_0$ é o conjunto dos pontos de condensação de $X$, então $X backslash X_0$ é enumerável, e $X_0$ é fechado em $X$.\
b) Prove que se $F$ é fechado $F_0$ é o conjunto dos pontos de condensação de $F$, então $F_0$ é um conjunto fechado sem pontos isolados (isto é, um conjunto _perfeito_).

#line(length: 100%)

a) Se $X_0 := {a in X bar forall epsilon.alt>0 : X inter (a - epsilon.alt, a + epsilon.alt) "é não-enumerável"}$, seu complementar portanto é $X backslash X_0 := {a in X bar exists epsilon.alt > 0 : X inter (a - epsilon.alt, a + epsilon.alt) "é enumerável"}$. Quer-se demonstrar que $ X backslash X_0$ é enumerável e $X_0$ é fechado em $X$.\
Para cada $a in X backslash X_0$, existe um intervalo $(a - epsilon.alt, a + epsilon.alt)$ contendo enumeráveis pontos de $X$, pela densidade de $QQ$ em $RR$, existe $q in (a - epsilon.alt,a)$ e $q' in (a, a+ epsilon.alt)$ tal que o intervalo $(q,q')$ tem $a$. Como $(q,q') inter X subset ( a - epsilon.alt, a+ epsilon.alt) inter X $, pela enumerabilidade do lado direito, tem-se a do lado esquerdo  da relação de inclusão. Considere o conjuntos dos pares racionais, $S := {q,q': (q,q') inter X "é enumerável"}$, os pares associados aos intervalos $(a -epsilon.alt, a + epsilon.alt)$, pertencem a $S$, e $S subset QQ^2$ é enumerável. A reunião enumerável sob $S$ dos intervalos interseccionados $(q,q') inter X$ é enumerável, i.e $U = union.big_(q,q' in S)(q,q') inter X$ é enumerável e, desde que para todo $a$ existem $q, q'$ de forma que $a in (q,q')$, então $X backslash X_0 subset U$, logo $X backslash X_0$ é enumerável. 

A relação $X_ 0 subset overline(X_0) inter X $ é válida. Seja $a in overline(X_0) inter X$, então $forall epsilon.alt > 0: (a- epsilon.alt, a + epsilon.alt) inter X_0 != emptyset$, seja então $b in X_0$ e uma bola de raio $delta$ tal que $(b - delta , b+ delta) inter X subset (a - epsilon.alt, a + epsilon.alt) inter X$, pela não-enumerabilidade do lado esquerdo da relação de inclusão, tem-se o da direita e, $a in X_0$, logo $overline(X_0) inter X subset X_0$. Logo, $overline(X_0) inter X = X_0$, por definição, $X_0$ é fechado em $X$.

#fim

b) Seja $a in F'_0$, por definição, $forall epsilon.alt > 0 : ((a - epsilon.alt, a + epsilon.alt) backslash {a}) inter F_0 != emptyset$. Seja $b$ um ponto deste intervalo e, uma bola de raio $delta$, $(b - delta, b + delta) subset (a - epsilon.alt, a + epsilon.alt)$, como $b in F_0$, $(b - delta, b + delta) inter F$ é não-enumerável, em geral, para qualquer vizinhança; daí, como $(b - delta, b + delta) inter F subset (a - epsilon.alt, a + epsilon.alt) inter F$, ora, o segundo não é enumerável, então $a in F_0$, por definição $F_0$ é fechado.

Afim de contradição, assumindo $p in F_0$, um ponto isolado de $F_0$, $exists epsilon.alt > 0 : (a - epsilon.alt, a + epsilon.alt) inter F_0 = {a}$, e todo outro ponto de $F$ neste conjunto pertence à $F backslash F_0$, pelo item a), então $((a - epsilon.alt, a + epsilon.alt) inter F) backslash {a}$ é enumerável, mas como $a in F_0$, $(a - epsilon.alt, a+ epsilon.alt) inter F$ é não-enumerável, contradição com $(((a- epsilon.alt, a + epsilon.alt) inter F) backslash {a}) union {a} = (a - epsilon.alt, a - epsilon.alt) inter F $. Logo, $F_0$ não possui pontos isolados.

#fim

#pagebreak()

#line(length: 100%)

*6:* Seja $K$ o conjunto de Cantor e $tilde(K) subset RR$, $tilde(K) != emptyset$ um conjunto compacto, sem pontos isolados e de interior vazio. Prove que existe uma bijeção crescente $f: RR -> RR$ tal que $f(K) = tilde(K)$.

#line(length: 100%)

Primeiramente, considere a contrução recursiva do conjunto de Cantor.
Para todo $i in NN$, defina $A^((i))$ o conjunto finito dos extremos dos intervalos removidos na $i$-ésima iteração, e.g. $A^((1)) = {1/3, 2/3}$, $A^((2)) = {1/9, 2/9, 7/9, 8/9}$. E defina $B^((n)) = union.big_(i=1)^n A^((i)) union {0,1}$, o conjunto de todos os extremos até a $n$-ésima iteração. Doravante a notação $a_i^((n)) in A^((n))$, representará o $i$-ésimo elemento de $A^((n))$ tal que $1<=i<=2n$; análogo para $b_i^((n)) in B^((n))$.\
Seja $partial K = union.big_(i=1)^infinity A^((i))$, o conjunto de pontos de acumulação à direita e à esquerda de $K$, $partial K subset K$, e $partial K$ é denso em $K$. 

*Lema 6.1:* Existem $a,b in tilde(K)$ para $c in.not tilde(K)$, $inf tilde(K) < c < sup tilde(K)$ com $c in [a,b]$ e $(a,b) inter tilde(K)= emptyset$. O conjunto $X = {x>c bar (c,x) inter tilde(K) = emptyset}$ é não vazio, de fato, se $c in.not tilde(K)$, $exists epsilon.alt > 0: (c - epsilon.alt, c + epsilon.alt) inter tilde(K) = emptyset$; e limitado superiormente por $sup tilde(K)$, $b = sup tilde(K)$.\
$(c,b) inter tilde(K) = emptyset$, se não fosse, um elemento no conjunto seria uma cota superior menor. Além disso, $forall delta>0: (c, b+ delta) inter tilde(K) != emptyset$, se fosse, $b$ seria isolado, então $b$ é um ponto de acumulação à direita de $tilde(K)$; análogo para $a = inf tilde(K)$ sendo um ponto de acumulação à esquerda de $tilde(K)$. $c in [a,b]$.

Define-se a bijeção $f:RR -> RR$ para $partial K$, de forma que $f(0) = inf tilde(K)$, $f(1) = sup tilde(K)$ e, indutivamente: Seja $i$ ímpar, $f(b_(i+1)^((n))) - f(b_(i)^((n))) = Delta$. Desde que $(f(b_(i)^((n))) - Delta/3, f(b_(i+1)^((n))) +  Delta/3) subset.not tilde(K)$, existe $c$ no intervalo tal que $c in.not tilde(K)$, e pelo _Lema 6.1_, $c in [a,b]$, como $f(b_i^((n)))$ é ponto de acumulação à direita e $f(b_(i+1)^((n)))$ à esquerda, $f(b_i^((n))) < a < b < f(b_(i+1)^((n)))$. Então $f(a_i^((n+1))) = a$ e $f(a_(i+1)^((n+1))) = b$. Isto vem de que $B_(i+1) = B_i union A_(i+1)$ e $b_i^((n)) < a_i^((n+1)) < a_(i+1)^((n+1)) < b_(i+1)^((n+1))$, se $i$ ímpar. Logo $f$ está definida no conjunto $partial K$.

#align(center)[
  #image("cantor.png", width: 50%)
]

*Lema 6.2:* O intervalo em $f(RR)$ pode ser dividido em dois, mas a interseção com $tilde(K)$ é igual. De fato, $[f(b_(i+1)^((n))), f(b_i^((n)))] inter tilde(K) = ([f(b_(i+1)^((n))),a] union (a,b) union [b, f(b_i^((n)))]) inter tilde(K)= ([f(b_(i+1)^((n))),a] inter tilde(K)) union ((a,b) inter tilde(K)) union ([b, f(b_i^((n)))] inter tilde(K))= ([f(b_(i+1)^((n))),a] inter tilde(K)) union ([b,f(b_i^((n)))] inter tilde(K)) = ([f(b_(i+1)^((n))),a] union [b,f(b_i^((n)))]) inter tilde(K)$.

*Lema 6.3:* Pela definição dos intervalos, ambos $[f(b_(i+1)^((n))),a]$ e $[b, f(b_i^((n)))]$ tem comprimento menor que o comprimento de $|f(b_(i+1)^((n))) - f(b_i^((n)))| = 2/3$. Então, tomando-os indutivamente, o comprimento é menor que $(2/3)^n (sup tilde(K) - inf tilde(K))$.

*Lema 6.4:* Para todo $n in NN$ e $i$ ímpar, $tilde(k) in tilde(K) <=> tilde(k) in [f(b_i^((n))),f(b_(i+1))^((n))]$.\
($=>$) Pelo _Lema 6.2_, tomando $i$ ímpares,
$ union.big_(0<i<2^(n+1)) ([f(b_i^((n))),f(b_(i+1)^((n)))] inter tilde(K)) = tilde(K) . $
Para todo $n in NN$ e $i$ ímpar, se $tilde(k) in tilde(K)$ então $tilde(k) in [f(b_i^((n))),f(b_(i+1)^((n)))]$.\
($arrow.l.double$) Pelo _Lema 6.3_, seja $c in.not tilde(K)$, $inf tilde(K) < c < sup tilde(K)$; afim de contradição, assumindo $x in [f(b_i^((n))), f(b_(i+1)^((n)))]$ para todo $n in NN$ e $i$ ímpar. Então pelo _Lema 6.1_, $c in (a,b)$. Tomando $epsilon.alt = min(|c-a|,|b-c|)$, como o comprimento de $[f(b_i^((n))),f(b_(i+1)^((n)))]$ tende a $0$, obtém-se um desses intervalos possuindo $c$ de comprimento menor do que $epsilon.alt$, mas então $$ e $$ estariam em $(a,b)$, contradição com $(f(b_i^((n))),f(b_(i+1)^((n)))) inter tilde(K) = emptyset$.

*Lema 6.5:* $f(partial K)$ é denso em $tilde(K)$. Com efeito, tome $tilde(k) in tilde(K)$, e $(tilde(k) - epsilon.alt, tilde(k) + epsilon.alt)$, desde que o comprimento dos intervalos supracitados tendem a $0$, existe um intervalo $[f(b_i^((n))),f(b_(i+1)^((n)))]$ de comprimento menor que $epsilon.alt$ que possui $tilde(k)$, um dos extremos está em $(tilde(k) - epsilon.alt, tilde(k) + epsilon.alt)$ e em $f(partial K)$ portanto.

Em segundo lugar, mostraremos a definição de $f$ para todo $k in K$, fazendo-se necessários os lemas.

*Lema 6.6:* Uma sequência $(x_i)_(i in NN)$ de $partial K$ converge $<=> (f(x_i))_(i in NN)$ converge.\
($=>$) Se $(x_i)_(i in NN)$ converge para $l in K$, então $forall n in NN: l in [b_i^((n)), b_(i+1)^((n))]$ para $i$ ímpar. $exists N in NN: m > N => x_m in [b_i^((n)), b_(i+1)^((n))]$. Como $f$ é crescente em $partial K$ (será mostrado adiante), $m > N => f(b_i^((n))) <= f(x_m) <= f(b_(i+1)^((n)))$. Para todo $epsilon.alt > 0$, existe $n$ tal que $f(b_i^((n))) - f(b_(i+1)^((n))) < epsilon.alt$, logo $m,n > N => |f(x_m) - f(x_n)| < epsilon.alt$, concluí-se que $(f(x_i))_(i in NN)$ é uma sequência de Cauchy e logo converge.\
($arrow.l.double$) Se $(f(x_i))_(i in NN)$ converge para $l' in tilde(K)$, então, pelo _Lema 6.4_ para todo $n in NN$, $l' in [f(b_i^((n))), f(b_(i+1)^((n)))]$ para algum $i$ ímpar.

Note que se $(x_i)_(i in NN)$ e $(y_i)_(i in NN)$ de $partial K$ convergem para o mesmo limite $l$, então $lim_(i->infinity) f(x_i) = lim_(i -> infinity) f(y_i)$. Ora, se não fosse o caso, afim de contradição, sem perda de generalidade toma-se $L'=lim_(i -> infinity) f(y_i) > lim_(i -> infinity) f(x_i) = L$. Sabe-se que $L in [f(b_i^((n))), f(b_(i+1)^((n)))]$ para todo $n in NN$ e $i$ ímpar. Tomando-se $epsilon.alt = (L' - L)/2 > 0$, existem $N$ e $I$ tais que $L in [f(b_I^((N)), b_(I+1)^((N))] subset (L - epsilon.alt, L + epsilon.alt)$, e escolhendo $N'$ com $m > N$, então $f(y_m) in [f(b_I^((N))), f(b_(I+1)^((N)))]$. Deve ser então que $y_m in [b_I^((N)), b_(I+1)^((N))]$ e $lim_(i->infinity) y_i = l'$ está neste intervalo. Pode-se tomar então $tilde(N)$ tal que $m > tilde(N)$ implica em $x_m in [b_I^((N)), b_(I+1)^((N))]$. Mas isso significaria $f(x_m) in (L - epsilon.alt, L + epsilon.alt)$ donde $(L'- epsilon.alt, L' + epsilon.alt)$ não possui termos de $(x_i)_(i in NN)$ para $m$ suficientemente grande, contradição, portanto $L=L'$.

Define-se a bijeção $f: RR -> RR, forall k in K$ como $f(k) = lim_(i -> infinity) f(x_i)$ para alguma $(x_i)_(i in NN)$ de $partial K$ com $lim_(i -> infinity) x_i = k$, que existe pela definição de ponto de acumulação ($k = lim_(i -> infinity) x_i$, onde $(x_i)_(i in NN)$ é uma sequência de elementos de $partial K$, dois a dois distintos), já que o conjunto de Cantor $K$ não tem pontos isolados.

Em terceiro lugar, define-se $f: RR -> RR$ para $x in.not K$. Se $x>1 => f(x) = x - 1 + sup tilde(K)$ e $x < 0 => f(x) = x + inf tilde(K)$.\
Se $0 < x < 1$, tem-se $x in (b_I^((N)), b_(I+1)^((N)))$, define-se então $f(x) = alpha x + beta$; $alpha = (f(b_(I+1)^((N))) - f(b_I^((N)))) / (b_(I+1)^((N)) - b_I^((N)))$ e $beta = (f(b_(I+1)^((N)))b_(I+1)^((N)) - f(b_(I+1)^((N)))b_I^((N))) / (b_(I+1)^((N)) - b_I^((N)))$. Logo $f(b_I^((N)), b_(I+1)^((N))) = (f(b_I^((N))),f(b_(I+1)^((N))))$.

Finalmente, definiu-se $f: RR->RR$, ainda é necessário demonstrar que $f$ é crescente e uma bijeção.

*Proposição 6.7:* $f: RR -> RR$ é crescente.\
$f$ é crescente no conjunto $partial K$. De fato, basta verificar que é crescente em qualquer $B_i$. Se $i = 0$ é evidente. Por indução, se é crescente em $B_i$, levando em conta que, para $i$ ímpar, $b_i^((n)) < a_i^((n+1)) < a_(i+1)^((n+1)) < b_(i+1)^((n))$, e pela definição tem-se $f(b_i^((n))) < f(a_i^((n+1))) < f(a_(i+1)^((n+1))) < f(b_(i+1)^((n)))$, também é crescente em $B_(i+1)$, portanto é crescente em $partial K$.\
Para todo $k in K$, $f$ continua sendo crescente nessa extensão. Se $k in K$, então $k in [b_i^((n)), b_(i+1)^((n))]$, então deve ser que $f(k) in [f(b_i^((n))), f(b_(i+1)^((n)))]$, seja $k$ um ponto no intrior do intervalo ou nos extremos, pois os extremos são pontos de acumulação unilaterais. Assim, para $k, k' in K, k < k'$ existem $N,i_1,i_2$ tais que $k' in [b_(i_2)^((N)), b_(i_2 + 1)^((N))] subset ((k + k')/2, (3k'-k)/2)$, e $k in [b_(i_1)^((N)), b_(i_1 + 1)^((N))] subset ((3k' - k)/2, (k+k')/2)$ e tem-se portanto $f(k) <= f(b_(i_1+1)^((N))) < f(b_(k_2)^((N))) <= f(k')$. Tem-se que $f(K) = tilde(K)$, porque $forall tilde(k) in tilde(K)$ é limite de uma sequência convergente de $f(partial K)$, e é imagem de um elemento de $K$ na sequência equivalente em $partial K$, e reciprocamente todo elemento em $K$ tem imagem em $tilde(K)$.\
Por fim, tem-se que $f$ é crescente em $(-infinity, 0) union (1, +infinity)$ e $f([0,1]) subset [inf tilde(K) , sup tilde(K)]$. Falta desmontrar que $f$ é crescente em $[0,1]$. Dados $x,y in [0,1], x < y$, tem-se que $f(x) < f(y)$ se $x,y in K$. Se ambos não estão, então $x in (b_i^((n)), b_(i+1)^((n)))$ e $y in (b_j^((n)), b_(j+1)^((n)))$ com $i,j$ pares; se $i=j$, então $f(x) < f(b_(i+1)^((n))) < f(b_j^((n)))< f(y)$. O caso em que apenas um de $x,y$ pertence à $K$ se demonstra analogamente.

*Proposição 6.8:* $f: RR -> RR$ é uma bijeção.\
Como $f$ é crescente pela _Proposição 6.7_, $f$ é injetiva. Quer-se demonstrar que $f$ é sobrejetiva. De fato, se $x in RR$ tem-se por divisão de casos, se $x in tilde(K)$ então $x in f(K)$. Se $x in.not tilde(K)$, pode ser que $x > sup tilde(K)$ ou $x < inf tilde(K)$, mas nesse caso tem-se uma função afim. E no caso restante, $x in (f(b_I^((N))), f(b_(I+1)^((N))) )$ com $I$ par, com isso $x in f((b_I^((N)), b_(I+1)^((N))))$.

Concluí-se que $f: RR -> RR$ é uma bijeção, pela _Proposição 6.8_, crescente, pela _Proposição 6.7_ tal que $f(K) = tilde(K)$, pela _Proposição 6.7_.

#fim