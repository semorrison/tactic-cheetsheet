# refine

`refine` は `exact` と同様に機能しますが，プレースホルダを受け入れて新しいゴールを生成するという違いがあります．

```lean
{{#include ../Examples/Refine.lean:first}}
```

## constructor との関連

`refine` は [constructor](./constructor.md) の代わりに使うこともできます．実際 `refine` は `constructor` よりも柔軟で，`⊢ P ∧ Q ∧ R` のような形のゴールは `constructor` よりも簡潔に分割できます．

```lean
{{#include ../Examples/Refine.lean:constructor}}
```
