# Magical Control
RPGの魔法を作りやすくするためのライブラリ
## 使い方 - How to use
### 前置き  
このデータパックは身内で使うために作ったので結構機能は最低限です。  
データパックには以下のスコアボードがあり、名前の最後に★がついているものはダミープレイヤー`$Default`に数値を設定しておくことで初参加のプレイヤーにも自動的に設定されます。
| スコアボード名 |  説明 |
| ---- | ---- |
| Mana.max　★ | マナの最大値 |
| Mana.value | 現在のマナの量 |
| Mana.value.increaseAmount　★ | マナの回復量 |
| Mana.timer | マナ回復のタイマー。2000になると指定した分のマナが回復する |
| Mana.timer.increaseAmount　★ | マナ回復のタイマーが1tickにどれだけ増加するか |

__※`Mana.value`の増減はAPIを使用してください__

### クールタイム  

`/function magical_control:ct/start`を実行することでCTを開始できます  
CTを有効化するにはアイテムに以下の5つのNBTタグを設定する必要があります  

| タグ | 型 | 説明 |
| ---- | ---- | ---- |
| CustomModelData | Int | まぁ説明はいらないよね |
| isMagic | Boolean | アイテムが魔法かどうかを区別 。基本はtrue |
| CT | Int | クールタイムの長さ。チック単位 |
| isCT | Boolean | クールタイム中かを判断。基本はfalse |
| ChargingModel | Int | クールタイム中のモデルを指定 |

### マナ

`/function magical_control:mana/decrease/`を実行することでマナを消費できます  
マナを使うにもCTと同様にアイテムに以下の3つのNBTタグを設定する必要があります。

| タグ | 型 | 説明 |
| ---- | ---- | ---- |
| isMagic | Boolean | アイテムが魔法かどうかを区別。基本はtrue |
| Mana.Amount | Int | マナの消費量。 消費形態が割合の場合は消費パーセンテージを表す |
| Mana.Type | String | マナの消費形態を設定。 Ratioにするとパーセンテージ、Absにすると数値で消費 |

### MP、HPバー

専用のリソースパックを導入することでプレイヤーの画面の左上にMPとHPをバー形式で表示することができます。
(設定の「GUIの大きさ」とスコア`MagicalControl.guisize`を同じ値に設定してください)  
また`MagicalControl.guisize`が0の場合バーは表示されなくなります。

__※リソースパックを導入すると通常のHPバーと白色のボスバーが消えます__

### API

#### テスター
`/function magical_control:api/tester/`を実行することで   
「マナが足りている」   
「クールタイムが終わっている」  
「このアイテムは魔法である」  
この3つすべてを満たす場合、
```storage magical_control: Data.Return```にtrueを返します。

#### マナ
`/function magical_control:api/mana/`を実行することでマナを増減させることができます。  
この関数はマクロ関数になっており引数は以下の2つです
| 引数名 | 型 | 説明 |
| ---- | ---- | ---- |
| Value | Int | 増減する数値 |
| Type | String | 「set」 「remove」 「add」の三種類。使い方はScoreboardと同様 |
