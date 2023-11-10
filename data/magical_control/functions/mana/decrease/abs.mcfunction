#>magical_control:mana/decrease/abs
#
#マナ消費 絶対値
#
#@within function magical_control:mana/decrease/

execute store result score $DecreaseAmount Mana.value run data get entity @s SelectedItem.tag.Mana.Amount
scoreboard players operation @s Mana.value -= $DecreaseAmount Mana.value