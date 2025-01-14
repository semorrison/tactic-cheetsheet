# intro

named after: 導入(introduce)

`intro` は数学で慣習的に行われる

* `P → Q` を示すときに最初に `P` を仮定する
* `∀ x ∈ A, P(x)` を示すときに最初に `x ∈ A` が与えられたと仮定する

といった導入を実行します．

具体的には，`intro` は

* ゴールが `⊢ P → Q` という形であるときに `P` をローカルコンテキストに追加して，ゴールを `⊢ Q` に変える
* ゴールが `⊢ ∀ x, P x` という形であるときに `x` をローカルコンテキストに追加してゴールを `⊢ P x` に変える

といった挙動をします．

```lean
{{#include ../Examples/Intro.lean:first}}
```

もう一つ使用例を挙げておきます：

```lean
{{#include ../Examples/Intro.lean:forall}}
```

## 否定 ¬ について

Lean では否定 `¬ P` は `P → False` として定義されているので，ゴールが `¬ P` のときに `intro` すると `P` が仮定に追加されて，ゴールが `False` に変わります．

`False` は矛盾を導けば証明できます．

```lean
{{#include ../Examples/Intro.lean:neg}}
```