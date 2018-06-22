# Conway's Game of Life in Ruby

## Play

```rb
ruby play.rb
```

## 規則：

1. 當前細胞為存活狀態時，當周圍低於2個（不包含2個）存活細胞時， 該細胞變成死亡狀態。（模擬生命數量稀少）
2. 當前細胞為存活狀態時，當周圍有2個或3個存活細胞時， 該細胞保持原樣。
3. 當前細胞為存活狀態時，當周圍有3個以上的存活細胞時，該細胞變成死亡狀態。（模擬生命數量過多）
4. 當前細胞為死亡狀態時，當周圍有3個存活細胞時，該細胞變成存活狀態。 （模擬繁殖）

```
live < 2, die
live 2/3, live
live with >3, die
dead with == 3, spawn
```

https://zh.wikipedia.org/wiki/%E5%BA%B7%E5%A8%81%E7%94%9F%E5%91%BD%E6%B8%B8%E6%88%8F
https://www.youtube.com/watch?v=zEf6iUIkjf4
