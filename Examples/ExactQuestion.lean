import Mathlib.Tactic.LibrarySearch

variable (P Q : Prop)

-- ANCHOR: first
-- `exact?` はライブラリ検索を行う
example : x < x + 1 := by
  -- `Try this: exact Nat.lt.base x` と出力される
  exact?
-- ANCHOR_END: first

-- ANCHOR: local
-- ローカルコンテキストにある仮定を自動で使ってゴールを導いてくれる
example (hPQ : P → Q) (hQR : Q → R) (hQ : P) : R := by
  -- `Try this: exact hQR (hPQ hQ)` と出力される
  exact?

  -- 証明は `exact?` だけで終わっている
  done
-- ANCHOR_END: local