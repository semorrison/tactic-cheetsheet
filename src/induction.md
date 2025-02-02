# induction

`induction` は，帰納法のためのタクティクです．

自然数を例に説明します．Lean では自然数は次のように帰納的に定義されています.

```lean
{{#include ../Examples/Induction.lean:nat}}
```

`succ` は後者関数と呼ばれる関数で，`n + 1 := succ n` です．

`n : Nat` についてゴール `P n ⊢ Q n` があったとします．このとき `induction n` を行うと，コンストラクタ `zero` と `succ` のそれぞれに対して，対応するゴールを生成します．つまり

* `P 0 ⊢ Q 0`
* `(P (succ a)) (P a → Q a) ⊢ Q (succ a)`

の２つのゴールです．

```lean
{{#include ../Examples/Induction.lean:first}}
```

## induction'

needs: `import Mathlib.Tactic.Cases`

`induction'` というタクティクもあります．こちらは箇条書きによる，より簡潔な書き方が可能です．

```lean
{{#include ../Examples/Induction.lean:dash}}
```

## 強い帰納法

時には，より強い帰納法が必要なこともあります．強い帰納法とは，たとえば

* `P(0)` を示す
* `(∀ k < n, P (k)) → P (n)` を示す
* したがって `∀ n, P (n)` である

という形式で表されるような帰納法のことです．これは超限帰納法の特別な場合です．これを使用するには，`Nat.strong_induction_on` を使って次のようにします．

```lean
{{#include ../Examples/Induction.lean:strong}}
```