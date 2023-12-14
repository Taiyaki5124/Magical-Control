#>magical_control:mana/decrease/ratio
#
#マナ消費 割合
#
#@within function magical_control:mana/decrease/

execute store result score $Percentage Mana.value run data get entity @s SelectedItem.tag.Mana.Amount
scoreboard players operation $DecreaseAmount Mana.value = @s Mana.max
scoreboard players operation $DecreaseAmount Mana.value *= $Percentage Mana.value
scoreboard players operation $DecreaseAmount Mana.value /= $100 Mana.value

data modify storage magical_control: temp.Api.Type set value "remove"
execute store result storage magical_control: temp.Api.Value int 1 run scoreboard players get $DecreaseAmount Mana.value
function magical_control:api/mana/ with storage magical_control: temp.Api