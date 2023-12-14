#>magical_control:gui/bar/calc
#
#計算 102分率
#
#@within function magical_control:gui/playerid

#GUIが無効だったらReturn
execute if score @s MagicalControl.guisize matches 0 run return 1

#PlayerID取得
execute store result storage magical_control: temp.id int 1 run scoreboard players get @s MagicalControl.PlayerID

#<   ManaPoint   >

##ScoreInit
scoreboard players operation #Max.MP MagicalControl.temp = @s Mana.max
scoreboard players operation #Now.MP MagicalControl.temp = @s Mana.value

##Calc
#デカくして精度上げる
scoreboard players operation #Max.MP MagicalControl.temp *= #10000 MagicalControl.temp
scoreboard players operation #Now.MP MagicalControl.temp *= #10000 MagicalControl.temp

#102分したうちの1つの数値
scoreboard players operation #Max.MP MagicalControl.temp /= #102 MagicalControl.temp

#今のマナは1/102がどれくらいあるか
scoreboard players operation #Now.MP MagicalControl.temp /= #Max.MP MagicalControl.temp

#リソパ用減算(uE000~uE101になってる)
scoreboard players remove #Now.MP MagicalControl.temp 1

##Display
#Dataに代入
execute store result storage magical_control: temp.ManaProportion int 1 run scoreboard players get #Now.MP MagicalControl.temp

#<   HealthPoint   >

##ScoreInit
execute store result score #Max.HP MagicalControl.temp run attribute @s minecraft:generic.max_health get
execute store result score #Now.HP MagicalControl.temp run data get entity @s Health

##Calc
#デカくして精度上げる
scoreboard players operation #Max.HP MagicalControl.temp *= #10000 MagicalControl.temp
scoreboard players operation #Now.HP MagicalControl.temp *= #10000 MagicalControl.temp

#102分したうちの1つの数値
scoreboard players operation #Max.HP MagicalControl.temp /= #102 MagicalControl.temp

#今のHPは1/102がどれくらいあるか
scoreboard players operation #Now.HP MagicalControl.temp /= #Max.HP MagicalControl.temp

#リソパ用減算(uE000~uE101になってる)
scoreboard players remove #Now.HP MagicalControl.temp 1

##Display
#Dataに代入
execute store result storage magical_control: temp.HealthProportion int 1 run scoreboard players get #Now.HP MagicalControl.temp

#調整
execute store result storage magical_control: temp.Health int 1 run data get entity @s Health
execute store result storage magical_control: temp.MaxHealth int 1 run attribute @s minecraft:generic.max_health get

execute store result storage magical_control: temp.Mana int 1 run scoreboard players get @s Mana.value
execute store result storage magical_control: temp.MaxMana int 1 run scoreboard players get @s Mana.max

function magical_control:gui/bar/display/string with storage magical_control: temp

#表示
execute if score @s MagicalControl.guisize matches 1 run function magical_control:gui/bar/display/1 with storage magical_control: temp
execute if score @s MagicalControl.guisize matches 2 run function magical_control:gui/bar/display/2 with storage magical_control: temp
execute if score @s MagicalControl.guisize matches 3 run function magical_control:gui/bar/display/3 with storage magical_control: temp
execute if score @s MagicalControl.guisize matches 4 run function magical_control:gui/bar/display/4 with storage magical_control: temp