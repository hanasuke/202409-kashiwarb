## モデリング


- game
  - board
    - cell
      - mine
      - unopened
      - opened
        - 隣接するセル(8マス)にあるmine cellの数
      - flagged
  - (time)
  - 全体の地雷の数
  - クリアしたかどうか



## モデル設計
### game


### board

### cell
- 状態
  - mine
  - unopened
  - opened
  - flagged


 状態
  - unopened
  - opend
  - opened

mineを持っているか


## 大きな処理の流れ
- gameはユーザに操作を促す
- ユーザはcellを選択

- ユーザはcellを選択
- gameはcellがmineかnか否かを判定する
- gameはcellがmineでなければcellをopenedにする
