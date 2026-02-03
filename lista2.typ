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
    #rect(width: 0.4em, height:1.2em, fill: black)
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

#pagebreak()

#line(length: 100%)

*3:* Sejam $X,Y subset RR$ com $Y subset X$. Dizemos que $Y$ é _fechado_ em $X$ se $overline(Y) inter X = Y$, e que $Y$ é _aberto_ em $X$ se, para todo $y in Y$, existe $epsilon.alt>0$ tal que $(y-epsilon.alt, y+ epsilon.alt) inter X subset Y$.\
a) Prove que, se $Y$ é aberto em $X$, então existe $U subset RR$ aberto com $U inter X = Y$.\
b) Prove que $Y$ é aberto em $X$ se, e só se, $X backslash Y$ é fechado em $X$.

#line(length: 100%)

a) Como $Y$ é aberto em $X$, $forall y in Y: exists epsilon.alt_y >0 : (y - epsilon.alt_y, y + epsilon.alt_y) inter X subset Y$. Considerando, para todo $y in Y$ a união dos intervalos abertos $ U =  union.big_(y in Y)(y- epsilon.alt_y, y+ epsilon.alt_y)$. $U$ sendo união de intervalos abertos é, por definição, aberto. $forall y in Y: y in U => Y subset U$, uma vez que $Y subset X => Y subset U inter X$. Por outro lado, $ U inter X = (union.big_(y in Y) (y-epsilon.alt_y, y+epsilon.alt_y)) inter X = union.big_(y in Y)((y-epsilon.alt_y, y + epsilon.alt_y) inter X) subset Y $
Desde que todo $(y- epsilon.alt_y, y+ epsilon.alt_y) inter X subset Y$. Logo $exists U subset RR:U inter X = Y$.

#fim

#pagebreak()


#line(length: 100%)

*5:* Sejam $X subset RR$ e $a in X$. Dizemos que $a$ é _ponto de condensação_ de $X$ se $X inter (a - epsilon.alt, a + epsilon.alt)$ é não-enumerável para todo $epsilon.alt>0$.\
a) Prove que, se $X_0$ é o conjunto dos pontos de condensação de $X$, então $X backslash X_0$ é enumerável, e $X_0$ é fechado em $X$.\
b) Prove que se $F$ é fechado $F_0$ é o conjunto dos pontos de condensação de $F$, então $F_0$ é um conjunto fechado sem pontos isolados (isto é, um conjunto _perfeito_).

#line(length: 100%)

a) Se $X_0 := {a in X bar forall epsilon.alt>0 : X inter (a - epsilon.alt, a + epsilon.alt) "é não-enumerável"}$, seu complementar portanto é $X backslash X_0 := {a in X bar exists epsilon.alt > 0 : X inter (a - epsilon.alt, a + epsilon.alt) "é enumerável"}$. Quer-se demonstrar que $ X backslash X_0$ é enumerável e $X_0$ é fechado em $X$.\
Para cada $a in X backslash X_0$, existe um intervalo $(a - epsilon.alt, a + epsilon.alt)$ contendo enumeráveis pontos de $X$, pela densidade de $QQ$ em $RR$, existe $q in (a - epsilon.alt,a)$ e $q' in (a, a+ epsilon.alt)$ tal que o intervalo $(q,q')$ tem $a$. Como $(q,q') inter X subset ( a - epsilon.alt, a+ epsilon.alt) inter X $, pela enumerabilidade do lado direito, tem-se a do lado esquerdo  da relação de inclusão. Considere o conjuntos dos pares racionais, $S := {q,q': (q,q') inter X "é enumerável"}$, os pares associados aos intervalos $(a -epsilon.alt, a + epsilon.alt)$, pertencem a $S$, e $S subset QQ^2$ é enumerável. A reunião enumerável sob $S$ dos intervalos interseccionados $(q,q') inter X$ é enumerável, i.e $U = union.big_(q,q' in S)(q,q') inter X$ é enumerável e, desde que para todo $a$ existem $q, q'$ de forma que $a in (q,q')$, então $X backslash X_0 subset U$, logo $X backslash X_0$ é enumerável. 