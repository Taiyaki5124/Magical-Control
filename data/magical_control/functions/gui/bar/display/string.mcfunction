#>magical_control:gui/bar/display/string
#
#リソパ用に数値を変換
#
#@within function magical_control:gui/bar/calc

#MP
$execute if score #Now.MP MagicalControl.temp matches ..9 run data modify storage magical_control: temp.ManaProportion set value "00$(ManaProportion)"
$execute if score #Now.MP MagicalControl.temp matches 10..99 run data modify storage magical_control: temp.ManaProportion set value "0$(ManaProportion)"
$execute if score #Now.MP MagicalControl.temp matches 100.. run data modify storage magical_control: temp.ManaProportion set value "$(ManaProportion)"

#HP
$execute if score #Now.HP MagicalControl.temp matches ..9 run data modify storage magical_control: temp.HealthProportion set value "00$(HealthProportion)"
$execute if score #Now.HP MagicalControl.temp matches 10..99 run data modify storage magical_control: temp.HealthProportion set value "0$(HealthProportion)"
$execute if score #Now.HP MagicalControl.temp matches 100.. run data modify storage magical_control: temp.HealthProportion set value "$(HealthProportion)"

#実数HP
execute store result score #Now.HP MagicalControl.temp run data get entity @s Health
execute store result score #Max.HP MagicalControl.temp run attribute @s minecraft:generic.max_health get

$execute if score #Now.HP MagicalControl.temp matches ..9 run data modify storage magical_control: temp.Health set value "00$(Health)"
$execute if score #Now.HP MagicalControl.temp matches 10..99 run data modify storage magical_control: temp.Health set value "0$(Health)"
$execute if score #Now.HP MagicalControl.temp matches 100.. run data modify storage magical_control: temp.Health set value "$(Health)"

$execute if score #Max.HP MagicalControl.temp matches ..9 run data modify storage magical_control: temp.MaxHealth set value "00$(MaxHealth)"
$execute if score #Max.HP MagicalControl.temp matches 10..99 run data modify storage magical_control: temp.MaxHealth set value "0$(MaxHealth)"
$execute if score #Max.HP MagicalControl.temp matches 100.. run data modify storage magical_control: temp.MaxHealth set value "$(MaxHealth)"

#実数MP
execute store result score #Now.MP MagicalControl.temp run scoreboard players get @s Mana.value
execute store result score #Max.MP MagicalControl.temp run scoreboard players get @s Mana.max

$execute if score #Now.MP MagicalControl.temp matches ..9 run data modify storage magical_control: temp.Mana set value "00$(Mana)"
$execute if score #Now.MP MagicalControl.temp matches 10..99 run data modify storage magical_control: temp.Mana set value "0$(Mana)"
$execute if score #Now.MP MagicalControl.temp matches 100.. run data modify storage magical_control: temp.Mana set value "$(Mana)"

$execute if score #Max.MP MagicalControl.temp matches ..9 run data modify storage magical_control: temp.MaxMana set value "00$(MaxMana)"
$execute if score #Max.MP MagicalControl.temp matches 10..99 run data modify storage magical_control: temp.MaxMana set value "0$(MaxMana)"
$execute if score #Max.MP MagicalControl.temp matches 100.. run data modify storage magical_control: temp.MaxMana set value "$(MaxMana)"