# replace

needs: `import Std.Tactic.Replace`

`replace` は [have](./have.md) と同じく補題を入手するためのタクティクですが，`have` とは異なりローカルコンテキストにすでにある命題を置き換えることができます．

`have` を使った場合，ローカルコンテキストにすでに `h : P` がある状態で，再び `h` という名前で別の命題を示すと，古い方の `h` はアクセス不能になって `†` が付いた状態になってしまいます．

`replace` であれば，古い方が新しい方に置き換えられ，`†` の付いた命題は出現しません．

```lean
{{#include ../Examples/Replace.lean:first}}
```