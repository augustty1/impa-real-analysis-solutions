#import "@preview/tablex:0.0.8": tablex

#set page(header: align(center + horizon)[
  #grid(
    columns:(.5fr, 1fr, 1fr),
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

#line(length : 100%)
*1:* Seja $phi: NN -> NN$ a bijeção tal que $phi(1)=1$ e, para todo $k in NN$, temos $a_(k^2 + 2r - 1)=k^2 + k + r$, para $r$ inteiro com $1 <= r <= k + 1 $ e $a_(k^2 + 2r)= k^2 + k + 1 - r$, para $r$ inteiro com $1<=r<=k$.\
(a) Prove que se $(a_n)$ é uma sequência tal que $sum a_n$ converge então $sum a_(phi(n))$ converge e $sum a_(phi(n)) = sum a_n$.\
(b) Exiba uma sequência $(b_n)$ tal que $sum b_n$ diverge e $b_(phi(n))$ converge.
#line(length : 100%)



#pagebreak()

#line(length: 100%)
*4: Teorema de Baire.* Prove o _teorema de Baire para fechados_: se $F subset RR$ é fechado e, para cada $k in NN$, $A_k subset RR$ é um aberto tal que $A_k inter F$ é denso em $F$ então $inter_(k in NN)A_k inter F$ é denso em $F$.
#line(length: 100%)

#pagebreak()

#line(length:100%)

*5:* Sejam $X subset RR$ e $a in X$. Dizemos que $a$ é _ponto  de condensação_ de $X$ se $X inter (a-epsilon, a+ a-epsilon)$ é não-enumerável para todo $epsilon > 0$.\
(i) Prove que, se $X_0$ é o conjunto dos pontos de condensação de $X$, então $X backslash X_0$ é enumerável, e $X_0$ é fechado em $X$.\
(ii) Prove que se $F$ é fechado $F_0$ é o conjunto dos pontos de condensação de $F$, então $F_0$ é um conjunto fechado sem pontos isolados (isto é, um conjunto _perfeito_).


#line(length: 100%)


(i) Se $X_0 := {a in X|forall epsilon>0: X inter (a- epsilon, a+ epsilon) "é não-enumerável"}$, seu complementar portanto é $X backslash X_0 := {a in X | exists epsilon >0 : X inter (a- epsilon, a+ epsilon) "é enumerável" }$. Quer-se demonstrar que (a) $X backslash X_0$ é enumerável e (b) $X_0$ é fechado em $X$.

(a) Para cada $a in X backslash X_0$, existe um intervalo $(a-epsilon, a+ epsilon)$ contendo enumeráveis pontos de $X$, pela densidade de $QQ "em" RR$, existe $q_1 in (a-epsilon, a)$ e $q_2 in (a, a+ epsilon)$ tal que o intervalo $(q_1,q_2)$ contém $a$. Como $(q_1,q_2)inter X subset (a-epsilon, a+epsilon)inter X$, pela enumerabilidade do lado direito, tem-se a do lado esquerdo da relação de inclusão. Considere o conjunto dos pares racionais, $S:= {q_1,q_2: (q_1,q_2)inter X "é enumerável"}$, os pares associados aos intervalos $(a-epsilon, a+ epsilon)$, pertencem a $S$, e $S subset QQ^2$ é enumerável. A reunião enumerável sob $S$ dos intervalos $(q_1,q_2)inter X$ é enumerável, i.e. $U = union_(q_1,q_2 in S) (q_1,q_2)inter X$ é enumerável e, desde que para todo $a$ existem $q_1,q_2$ de forma que $a in (q_1,q_2)$, então $X backslash X_0 subset U$, logo $X backslash X_0$ é enumerável.

(b) Seja $a in X'_0$, por definição, $forall epsilon>0: [(a-epsilon, a+ epsilon) backslash {a}] inter X_0 != emptyset$. Seja $b$ um ponto deste intervalo e, um bola de raio $delta$, $(b - delta , b+ delta) subset (a-epsilon, a+ epsilon)$, como $b in X_0$, $(b- delta, b + delta ) inter X $ é não-enumerável, em geral, para qualquer vizinhança; daí, como $(b - delta, b+ delta)inter X subset (a-epsilon, a + epsilon) inter X$, ora, o segundo não é enumerável, então $a in X_0$, por definição $X_0$ é fechado em $X$. 




#pagebreak()

#line(length: 100%)

*6:* Seja $K$ o conjunto de Cantor e  $tilde(K) subset RR, tilde(K) != emptyset$ um conjunto compacto, sem pontos isolados e de interior vazio. Prove que existe uma bijeção crescente $f: RR -> RR$ tal que $f(K) = tilde(K)$.

#line(length: 100%)