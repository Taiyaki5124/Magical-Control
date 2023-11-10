# Magical Control
RPGの魔法を作りやすくするためのライブラリ ※身内で使うために作った
## 使い方 - How to use
### 前提  
魔法に使うアイテムは**すべて人参棒**です  

### クールタイム  

```/function magical_control:ct/start```を実行することでCTを開始できます  
CTを有効化するには人参棒に以下の5つのNBTタグを設定する必要があります  

---
| タグ | 数値 | 説明 |
| ---- | ---- | ---- |
| CustomModelData | Int | まぁ説明はいらないよね |
| isMagic | Boolean | 人参棒が魔法かどうかを区別します 。基本はtrue |
| CT | Int | クールタイムの長さ。チック単位 |
| isCT | Boolean | クールタイム中かを判断します。基本はfalse |
| ChargingModel | Int | クールタイム中のモデルを指定します |
---

### マナ

```/function magical_control:mana/decrease/```を実行することでCTを開始できます  
マナを使うにもCTと同様に人参棒に以下の3つのNBTタグを設定する必要があります。

---
| タグ | 数値 | 説明 |
| ---- | ---- | ---- |
| Mana.Amount | Int | マナの消費量。 消費形態が割合の場合は消費パーセンテージを表す |
| Mana.Type | String | マナの消費形態を設定。 Ratioにするとパーセンテージ、Absにすると数値で消費 |
---

ちなみに各種スコアによってマナの回復量や最大値が決まっています。  

---
| スコアボード |  説明 |
| ---- | ---- |
| Mana.max | マナの最大値 |
| Mana.value | 現在のマナの量 |
| Mana.value.increaseAmount | マナの回復量 |
| Mana.timer | マナ回復のタイマー。2000になると指定した分のマナが回復する |
| Mana.timer.increaseAmount | マナ回復のタイマーが1tickにどれだけ増加するか |
---
