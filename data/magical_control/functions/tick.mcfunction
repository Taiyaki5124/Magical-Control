#Abs.time
scoreboard players add $Abs.time MagicalControl.time 1

#CT Proceed
execute as @a at @s if data entity @s SelectedItem.tag{isMagic:true,isCT:true} run function magical_control:ct/proceed

#Mana Recharge
execute as @a at @s if score @s Mana.value < @s Mana.max run function magical_control:mana/recharge/timer

#GUI
scoreboard players add @a MagicalControl.PlayerID 0
execute as @a at @s if score @s MagicalControl.PlayerID matches 0 run function magical_control:gui/playerid

scoreboard players add @a MagicalControl.guisize 0
execute as @a at @s if score @s MagicalControl.guisize matches 0 run function magical_control:gui/bar/hide/macro

#GUI表示
execute as @a at @s run function magical_control:gui/check/