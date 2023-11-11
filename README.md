# Magical Control
RPGの魔法を作りやすくするためのライブラリ
## 使い方 - How to use
### 前置き  
このデータパックは身内で使うために作ったので結構機能は最低限です。  
データパックには以下のスコアボードがあり、名前の最後に★がついているものは各プレイヤーに設定が必須です
| スコアボード名 |  説明 |
| ---- | ---- |
| Mana.max　★ | マナの最大値 |
| Mana.value | 現在のマナの量 |
| Mana.value.increaseAmount　★ | マナの回復量 |
| Mana.timer | マナ回復のタイマー。2000になると指定した分のマナが回復する |
| Mana.timer.increaseAmount　★ | マナ回復のタイマーが1tickにどれだけ増加するか |

### クールタイム  

```/function magical_control:ct/start```を実行することでCTを開始できます  
CTを有効化するにはアイテムに以下の5つのNBTタグを設定する必要があります  

| タグ | 数値 | 説明 |
| ---- | ---- | ---- |
| CustomModelData | Int | まぁ説明はいらないよね |
| isMagic | Boolean | アイテムが魔法かどうかを区別します 。基本はtrue |
| CT | Int | クールタイムの長さ。チック単位 |
| isCT | Boolean | クールタイム中かを判断します。基本はfalse |
| ChargingModel | Int | クールタイム中のモデルを指定します |

### マナ

```/function magical_control:mana/decrease/```を実行することでマナを消費できます  
マナを使うにもCTと同様にアイテムに以下の2つのNBTタグを設定する必要があります。

| タグ | 数値 | 説明 |
| ---- | ---- | ---- |
| Mana.Amount | Int | マナの消費量。 消費形態が割合の場合は消費パーセンテージを表す |
| Mana.Type | String | マナの消費形態を設定。 Ratioにするとパーセンテージ、Absにすると数値で消費 |

### テスター

```/function magical_control:tester/```を実行することで「マナが足りている」「クールタイムが終わっている」「このアイテムは魔法である」の3つすべてを満たす場合、  
```storage magical_control: Data.Return```にtrueを返してくれます。
