#>magical_control:mana/recharge/timer
#
#マナ回復 Timer
#
#@within function magical_control:tick

scoreboard players operation @s Mana.timer += @s Mana.timer.increaseAmount
execute if score @s Mana.timer matches 2000.. run function magical_control:mana/recharge/